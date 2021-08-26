import 'package:facebook_interface_aula/modelos/modelos.dart';
import 'package:flutter/material.dart';

class Postagem {
  Usuario usuario;
  String descricao;
  String tempoAtras;
  String urlImagem;
  int curtidas;
  int comentarios;
  int compartilhamentos;

  Postagem({
    required this.usuario,
    required this.descricao,
    required this.tempoAtras,
    required this.comentarios,
    required this.compartilhamentos,
    required this.curtidas,
    required this.urlImagem,
  });
}
