import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sockets2/src/providers/usuario_provider.dart';
import 'package:sockets2/src/widgets/sin_grupo.dart';

class MiGrupoPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final userProvider = Provider.of<UsuarioProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Mi Grupo', 
          style: TextStyle( 
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),
        ),
        userProvider.user.grupo == null
        ? Center(
          child: Container(
            padding: EdgeInsets.only(top: 100.0),
            child: SinGrupo()
          ),
        )
        : Text('Grupo')
        
      ],
    );
  }
}