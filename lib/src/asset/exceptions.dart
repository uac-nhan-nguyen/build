// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'asset.dart';
import 'id.dart';

class AssetNotFoundException implements Exception {
  final AssetId assetId;

  AssetNotFoundException(this.assetId);

  @override
  String toString() => 'AssetNotFoundException: $assetId';
}

class PackageNotFoundException implements Exception {
  final String name;

  PackageNotFoundException(this.name);

  @override
  String toString() => 'PackageNotFoundException: $name';
}

class InvalidOutputException implements Exception {
  final Asset asset;

  InvalidOutputException(this.asset);

  @override
  String toString() => 'InvalidOutputException: $asset';
}
