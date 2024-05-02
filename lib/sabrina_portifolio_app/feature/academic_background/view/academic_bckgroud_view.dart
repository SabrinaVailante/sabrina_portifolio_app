import 'package:flutter/material.dart';

class AcademicBackgroudView extends StatefulWidget {
  const AcademicBackgroudView({super.key});

  @override
  State<AcademicBackgroudView> createState() => _AcademicBackgroudViewState();
}

class _AcademicBackgroudViewState extends State<AcademicBackgroudView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        iconTheme: const IconThemeData(color: Color.fromRGBO(0, 0, 0, 1)),
        backgroundColor: const Color.fromRGBO(36, 167, 174, 1.0),
        title: const Text(
          'Formação Acadêmica',
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1.0), fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Baixar Currículo",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontFamily: "RobotoMono",
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download,
                    color: Color.fromRGBO(36, 166, 173, 1.0),
                  ))
            ],
          ),
          const TextField(
            decoration: InputDecoration(
                label: Text(
              'Nome do curso',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
            )),
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1.0),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
                label: Text(
              'Plataforma',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
            )),
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1.0),
            ),
          ),
          const Row(
            children: [
              Expanded(
                flex: 8,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                    'Data de início',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                  )),
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 8,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                    'Data de início',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                  )),
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(2),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(36, 167, 174, 1.0)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                  child: const Text(
                    "Pesquisar",
                    style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(2),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(33, 139, 148, 1.0)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )),
                  child: const Text(
                    "Limpar",
                    style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              thickness: 0.4,
              color: Color.fromRGBO(255, 255, 255, 1.0),
            ),
          ),
          Expanded(
              child: Scaffold(
            backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(36, 167, 174, 1.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
              ),
              title: const Text(
                'Certificados',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                ),
              ),
            ),
            body: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color.fromRGBO(36, 167, 174, 0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      const Image(
                        image: AssetImage("assets/images/img.png"),
                        width: 80,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Nome do certificado",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1.0)),
                          ),
                          Text(
                            "Plataforma",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1.0)),
                          ),
                          Text(
                            "Data de Conclusão",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1.0)),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {},
                        iconSize: 40,
                        color: Color.fromRGBO(36, 167, 174, 1.0),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shadowColor: Color.fromRGBO(36, 166, 173, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(children: [
                      Image(
                        image: AssetImage("assets/images/img.png"),
                        width: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Nome do certificado"),
                          Text("Plataforma"),
                          Text("Data de Conclusão"),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {},
                        iconSize: 40,
                        color: Color.fromRGBO(36, 167, 174, 1.0),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shadowColor: Color.fromRGBO(36, 166, 173, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(children: [
                      Image(
                        image: AssetImage("assets/images/img.png"),
                        width: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Nome do certificado"),
                          Text("Plataforma"),
                          Text("Data de Conclusão"),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {},
                        iconSize: 40,
                        color: Color.fromRGBO(36, 167, 174, 1.0),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  shadowColor: Color.fromRGBO(36, 166, 173, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(children: [
                      Image(
                        image: AssetImage("assets/images/img.png"),
                        width: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Nome do certificado"),
                          Text("Plataforma"),
                          Text("Data de Conclusão"),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {},
                        iconSize: 40,
                        color: Color.fromRGBO(36, 167, 174, 1.0),
                      ),
                    ]),
                  ),
                ),
              ),
            ]),
          )),
        ]),
      ),
    );
  }
}
/*Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Card(
                                  margin: EdgeInsets.zero,
                                  color: DpmgCores.coresPrincipais.cianoEscuro,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(3),
                                      topRight: const Radius.circular(3),
                                      bottomLeft:
                                          Radius.circular(state ? 3 : 0),
                                      bottomRight:
                                          Radius.circular(state ? 3 : 0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 8.0,
                                        left: 15.0,
                                        right: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Listagem',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        AnimatedRotation(
                                          turns: state ? 0 : 1 / 4,
                                          duration: const Duration(),
                                          child: const SizedBox(
                                            width: 50,
                                            child: RawMaterialButton(
                                              onPressed: null,
                                              child: Icon(
                                                Icons.chevron_right_rounded,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                sentidoRotacao = !sentidoRotacao;
                                context
                                    .read<GiroBotaoCubit>()
                                    .abrirContainer(sentidoRotacao);
                              },
                            ),
                            state
                                ? const SizedBox()
                                : Expanded(
                                    child: Card(
                                      color: Colors.white,
                                      surfaceTintColor: Colors.white,
                                      margin: EdgeInsets.zero,
                                      shape: OutlineInputBorder(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(3),
                                          bottomRight: Radius.circular(3),
                                        ),
                                        borderSide: BorderSide(
                                          color: DpmgCores
                                              .coresPrincipais.verdeEscuro,
                                        ),
                                      ),
                                      elevation: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: 25,
                                              child: linhaListagem(context),
                                            ),
                                            Divider(
                                              color: DpmgCores
                                                  .coresPrincipais.cinzaEscuro,
                                            ),
                                            BlocBuilder<FalaDefensoriaBloc,
                                                DpmgBaseState>(
                                              buildWhen: (previous, current) =>
                                                  current is FalaBuscarPessoaFisicaState ||
                                                  current
                                                      is FalaBuscarPessoaFisicaPaginadorState ||
                                                  current
                                                      is FalaLoadingPessoaFisicaPaginadorState ||
                                                  current
                                                      is FalaBuscarPessoaJuridicaState ||
                                                  current
                                                      is FalaBuscarPessoaJuridicaPaginadorState ||
                                                  current
                                                      is FalaLoadingPessoaJuridicaPaginadorState ||
                                                  current is LoadingState,
                                              builder: (context, state) {
                                                if (state is LoadingState) {
                                                  return const Expanded(
                                                    child: Center(
                                                        child:
                                                            CircularProgressIndicator()),
                                                  );
                                                }

                                                if (state
                                                    is FalaBuscarPessoaFisicaState) {
                                                  _listaPessoaFisica =
                                                      state.listaDados;
                                                }
                                                if (state
                                                    is FalaBuscarPessoaFisicaPaginadorState) {
                                                  for (var element
                                                      in state.listaDados) {
                                                    _listaPessoaFisica
                                                            .contains(element)
                                                        ? null
                                                        : _listaPessoaFisica
                                                            .add(element);
                                                  }
                                                  _listaPessoaFisica
                                                      .toSet()
                                                      .toList();
                                                }
                                                if (state
                                                    is FalaLoadingPessoaFisicaPaginadorState) {
                                                  _loadingPaginador = true;
                                                }

                                                if (state
                                                    is FalaBuscarPessoaJuridicaState) {
                                                  _listaPessoaJuridica =
                                                      state.listaDados;
                                                }
                                                if (state
                                                    is FalaBuscarPessoaJuridicaPaginadorState) {
                                                  for (var element
                                                      in state.listaDados) {
                                                    _listaPessoaJuridica
                                                            .contains(element)
                                                        ? null
                                                        : _listaPessoaJuridica
                                                            .add(element);
                                                  }
                                                  _listaPessoaJuridica
                                                      .toSet()
                                                      .toList();
                                                }
                                                if (state
                                                    is FalaLoadingPessoaJuridicaPaginadorState) {
                                                  _loadingPaginador = true;
                                                }

                                                return Flexible(
                                                  child: ListView.builder(
                                                    controller: wrapperSentidoSwitch
                                                            .value
                                                        ? _scrollPessoaFisica
                                                        : _scrollPessoaJuridica,
                                                    physics:
                                                        const AlwaysScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount:
                                                        wrapperSentidoSwitch
                                                                .value
                                                            ? _listaPessoaFisica
                                                                .length
                                                            : _listaPessoaJuridica
                                                                .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return wrapperSentidoSwitch
                                                              .value
                                                          ? FalaAssistidoListagemWidget(
                                                              falaPessoaFisicaModel:
                                                                  _listaPessoaFisica
                                                                          .isEmpty
                                                                      ? null
                                                                      : _listaPessoaFisica[
                                                                          index],
                                                              tipoPessoa:
                                                                  wrapperSentidoSwitch
                                                                      .value,
                                                            )
                                                          : FalaAssistidoListagemWidget(
                                                              falaPessoaJuridicaModel:
                                                                  _listaPessoaJuridica
                                                                          .isEmpty
                                                                      ? null
                                                                      : _listaPessoaJuridica[
                                                                          index],
                                                              tipoPessoa:
                                                                  wrapperSentidoSwitch
                                                                      .value,
                                                            );
                                                    },
                                                  ),
                                                );
                                              },
                                            ),
                                            _loadingPaginador
                                                ? const Center(
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10.0),
                                                      child:
                                                          CircularProgressIndicator(),
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      );*/
