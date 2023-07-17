import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:instagram_clone/resources/storage_methods.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
    String desc,
    Uint8List file,
    String uid,
    String username,
    String profImage,
  ) async {
    String res = "Error Occured!";

    try {
      String photoUrl =
          await StorageMethods().uploadImgToStorage('posts', file, true);

      String postId = const Uuid().v1();

      Post post = Post(
        desc: desc,
        uid: uid,
        postId: postId,
        username: username,
        datePublished: DateTime.now(),
        postUrl: photoUrl,
        profImage: profImage,
        likes: [],
      );

      _firestore.collection('posts').doc(postId).set(
            post.toJson(),
          );

      res = "success";
    } on FirebaseException catch (e) {
      res = e.toString();
    } catch (e) {
      res = e.toString();
    }

    return res;
  }
}