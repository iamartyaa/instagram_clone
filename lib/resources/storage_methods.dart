import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> uploadImgToStorage(String childName, Uint8List file, bool isPost) async {
    
    Reference ref = _storage.ref().child(childName).child(_auth.currentUser!.uid);
    
    String id;
    if(isPost){
      id = const Uuid().v1();

      ref = ref.child(id);
    }

    UploadTask uploadTask = ref.putData(file);

    TaskSnapshot snap = await uploadTask;
    
    String downloadURL = await snap.ref.getDownloadURL();

    return downloadURL;
  }

  Future<void> deletePost(String postId) async {
    try {
      Reference ref = _storage.ref().child('posts').child(_auth.currentUser!.uid).child(postId);

      await ref.delete();

    } catch (e){
      print(e.toString());
    }
  }
}