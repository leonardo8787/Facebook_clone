import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_aula/componentes/imagem_perfil.dart';
import 'package:facebook_interface_aula/modelos/postagens.dart';
import 'package:flutter/material.dart';

class CartaoPostagem extends StatelessWidget {
  final Postagem postagem;
  const CartaoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //cabeçalho
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //cabeçalho
                CabecalhoPostagem(postagem: postagem),
                Text(postagem.descricao),
                //descrição
              ],
            ),
          ),
          //imagem
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(
              imageUrl: postagem.urlImagem,
            ),
          ),
          //area estatística
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}

class CabecalhoPostagem extends StatelessWidget {
  final Postagem postagem;
  const CabecalhoPostagem({Key? key, required this.postagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagemPerfil(
          urlImagem: postagem.usuario.urlImagem,
          foiVisualizado: true,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postagem.tempoAtras,
                style: TextStyle(color: Colors.grey[200]),
              ),
              Column(
                children: [
                  Text(
                    postagem.usuario.nome,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "${postagem.tempoAtras} - ",
                      ),
                      Icon(
                        Icons.public,
                        size: 12,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        //informações do usuário
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}
