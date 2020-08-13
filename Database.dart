import 'dart:io';

import 'package:capstone_choosemyadventure/main.dart';
import 'package:capstone_choosemyadventure/background_video.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

    class DBProvider {
     DBProvider._(); //learn more about singletons
    static final DBProvider db = DBProvider._();
    }

    Database _database;

    Future<Database> get database async{
      if(_database != null)
        return _database;

      return _database;
    }

    initDB() async{
      Directory documentsDirectory = await getApplicationDocumentsDirectory();
      String path = join(documentsDirectory.path, "assets/ChooseMyAdventure.db");
      return await openDatabase(path, version: 1, onOpen: (db) {
      });
    }
