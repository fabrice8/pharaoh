import 'package:pharaoh/pharaoh.dart';

void _okHdler(req, res, next) => next(res.ok('Ok'));

void _fooBarMdw(req, res, next) => next(req..params['foo'] = 'bar');

/// request handler with response -> ok
const Middleware okHdler = _okHdler;

/// middleware that puts {'foo': 'bar'} into [req] params
const Middleware fooBarMdlw = _fooBarMdw;
