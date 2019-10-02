import 'package:flutter/material.dart';
import 'package:flutter_travel_app_02/pageImage.dart';

void main() =>
    runApp(MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
 
  void _onScroll() {}

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          PageImageWidget(
              page: 1,
              title: 'CONHEÇA O LITORAL DO PIAUÍ',
              description:
                  'Com 66km de extensão, o litoral do Piauí possui lindas praias, dunas de areia branca e lagoas incríveis. Praticantes de surf e kitesurf procuram as praias piauienses para a pratica destes esportes por encontrarem aqui as condições ideais de mar e de vento.',
              image:
                  'https://deltarioparnaiba.com.br/wp-content/uploads/2013/09/Praia-Pedra-do-Sal-019.jpg'),
          PageImageWidget(
              page: 2,
              title: 'LAGOA DO PORTINHO',
              description:
                  'Desde o início de julho, mais de 40 mil pessoas já visitaram a Lagoa do Portinho, um dos pontos turísticos mais conhecidos de Parnaíba, litoral do Piauí. De acordo com a Superintendência Municipal de Turismo, a movimentação aumentou 80% no período de férias.',
              image:
                  'https://i.pinimg.com/564x/b1/d5/c3/b1d5c38be2c40f6cd73d9815f2719333.jpg'),
          PageImageWidget(
              page: 3,
              title: 'DELTA DO PARNAIBA',
              description:
                  'O Delta do Parnaíba é considerado uma das mais belas paisagens do mundo. Está localizado entre os estados do Maranhão e Piauí tendo em Parnaíba sua porta de entrada. É um raro fenômeno da natureza que ocorre também no Rio Nilo, na África, e em Me Kong, no Vietnã.',
              image:
                  'https://i.pinimg.com/564x/48/a7/c9/48a7c99af021eb3610fcba92be08091b.jpg'),
          PageImageWidget(
              page: 4,
              title: 'PRAIA DA PEDRA DO SAL',
              description:
                  'Uma praia fantástica que está localizada na cidade de Parnaíba, tem como característica principal ter um lado bravo e um lado calmo.Para quem está em busca de dias de sossego, a dica é ficar no lado mais tranquilo onde tem poucas ondas.',
              image:
                  'https://www.bolsadeviagem.com.br/wp-content/uploads/2017/03/Praia-da-Pedra-do-Sal-no-Piaui.jpg'),
          PageImageWidget(
              page: 5,
              title: 'LUIS CORREA',
              description:
                  'A praia de Atalaia em Luís Correia é a principal praia do litoral piauiense. Possui uma ampla faixa de areia plana, com ondas brandas e vários quiosques ao longo da orla. Recentemente, a orla passou por uma grande reforma que trouxe como resultado um calçadão à beira-mar.',
              image:
                  'https://deltarioparnaiba.com.br/wp-content/uploads/2013/10/Praia-de-Atalaia-Lu%C3%ADs-Correia-Piau%C3%AD-04.jpg'),
          PageImageWidget(
              page: 6,
              title: 'PRAIA DO COQUEIRO',
              description:
                  'Uma das melhores praias do Piauí e a mais badalada do Estado é a Praia do Coqueiro.Com mar de águas extremamente cristalinas e areia dourada que formam um cenário perfeito para ninguém botar defeito.Coqueiro atrai milhares de turistas todos os anos, graças a suas belezas naturais e devido à proximidade da capital do Estado, Teresina.Os ventos constantes são ideais para a prática de esportes náuticos, como surf, kitesurf e windsurf.',
              image:
                  'https://i.pinimg.com/564x/71/73/23/71732379c64fd4ea2fbe5b31b914c0d0.jpg'),
          PageImageWidget(
              page: 7,
              title: 'PRAIA DA BARRA GRANDE',
              description:
                  'Barra Grande é um local pouco conhecido dos visitantes que vêm ao litoral piauiense. A praia é considerada o melhor local do Brasil para a pratica de kitesurf, além de ser uma praia muito tranquila, ideal para visitantes que buscam tranquilidade e lindas paisagens.Essas são algumas das principais praias do litoral piauiense, venha para o Piauí e descubra suas belezas naturais.',
              image:
                  'https://deltarioparnaiba.com.br/wp-content/uploads/2013/09/Barra-Grande-008.jpg'),
          PageImageWidget(
              page: 8,
              title: 'PORTOS DAS BARCAS ',
              description:
                  'O Porto das Barcas está ligado à história de Parnaíba. A cidade, quando passou à categoria de vila (era chamada de Vila de São João da Parnaíba), tinha como sede o povoado Testa Branca. Em seguida, a região que compreendia o Porto das Barcas tornou-se sede da pequena vila de São João do Parnaíba, por ser mais desenvolvida e porque era de lá que se exportavam as charques para outros estados e países. ',
              image:
                  'https://deltarioparnaiba.com.br/wp-content/uploads/2013/10/Porto-das-Barcas-011.jpg'),
        ],
      ),
    );
  }

  
}
