import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/component/review_success_card/review_success_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'review_bottomsheet_model.dart';
export 'review_bottomsheet_model.dart';

class ReviewBottomsheetWidget extends StatefulWidget {
  const ReviewBottomsheetWidget({
    super.key,
    required this.getProductUid,
  });

  final String? getProductUid;

  @override
  State<ReviewBottomsheetWidget> createState() =>
      _ReviewBottomsheetWidgetState();
}

class _ReviewBottomsheetWidgetState extends State<ReviewBottomsheetWidget> {
  late ReviewBottomsheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewBottomsheetModel());

    _model.contentTextController ??= TextEditingController();
    _model.contentFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 517.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pop();
                    },
                    child: Transform.rotate(
                      angle: 90.0 * (math.pi / 180),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFC6C7CD),
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                child: Text(
                  '리뷰 작성하기',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'noto sans',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 0.0, 0.0),
              child: Text(
                '별점 등록 (${valueOrDefault<String>(
                  _model.ratingBarValue?.toString(),
                  '3',
                )}/5)',
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'noto sans',
                      color: const Color(0xFF757884),
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        setState(() => _model.ratingBarValue = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: FlutterFlowTheme.of(context).electricBlue2,
                    ),
                    direction: Axis.horizontal,
                    initialRating: _model.ratingBarValue ??= 3.0,
                    unratedColor: const Color(0xFFE5FBFF),
                    itemCount: 5,
                    itemSize: 44.0,
                    glowColor: FlutterFlowTheme.of(context).electricBlue2,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 0.0, 11.0),
                  child: Text(
                    '리뷰',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: const Color(0xFF757884),
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 76.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).electricBlue2,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final selectedMedia = await selectMedia(
                                storageFolderPath: 'img',
                                imageQuality: 100,
                                multiImage: false,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading1 = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls =
                                      await uploadSupabaseStorageFiles(
                                    bucketName: 'review',
                                    selectedFiles: selectedMedia,
                                  );
                                } finally {
                                  _model.isDataUploading1 = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFile1 =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl1 =
                                        downloadUrls.first;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }

                              _model.addToImgUrls(_model.uploadedFileUrl1);
                              _model.addToImgListCount(_model.uploadedFileUrl1);
                              _model.updatePage(() {});
                            },
                            child: const Icon(
                              Icons.add_box,
                              color: Color(0xFF9AB8BD),
                              size: 54.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final selectedMedia = await selectMedia(
                                storageFolderPath: 'img',
                                imageQuality: 100,
                                mediaSource: MediaSource.photoGallery,
                                multiImage: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading2 = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls =
                                      await uploadSupabaseStorageFiles(
                                    bucketName: 'review',
                                    selectedFiles: selectedMedia,
                                  );
                                } finally {
                                  _model.isDataUploading2 = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFiles2 =
                                        selectedUploadedFiles;
                                    _model.uploadedFileUrls2 = downloadUrls;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }

                              if (_model.imgUrls.isNotEmpty ? true : false) {
                                while (_model.index !=
                                    _model.uploadedFileUrls2.length) {
                                  _model.addToImgUrls(
                                      _model.uploadedFileUrls2[_model.index!]);
                                  _model.addToImgListCount(
                                      _model.uploadedFileUrls2[_model.index!]);
                                  setState(() {});
                                  _model.index = _model.index! + 1;
                                }
                              } else {
                                _model.imgUrls = _model.uploadedFileUrls2
                                    .map((e) => e)
                                    .toList()
                                    .cast<String>();
                                _model.imgListCount = _model.uploadedFileUrls2
                                    .toList()
                                    .cast<String>();
                                _model.updatePage(() {});
                              }

                              _model.index = 0;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.add_box,
                              color: Color(0xFF9AB8BD),
                              size: 54.0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final reviewImgList =
                                    _model.imgUrls.map((e) => e).toList();

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: reviewImgList.length,
                                  itemBuilder: (context, reviewImgListIndex) {
                                    final reviewImgListItem =
                                        reviewImgList[reviewImgListIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 49.0,
                                            height: 52.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: Image.network(
                                                  reviewImgListItem,
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/Close_Frame_(2).png',
                                              width: 42.0,
                                              height: 42.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 28.0, 0.0),
                  child: TextFormField(
                    controller: _model.contentTextController,
                    focusNode: _model.contentFocusNode,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '리뷰 작성하고 P 받자!',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'noto sans',
                                color: const Color(0xFFC6C7CD),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).electricBlue2,
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).electricBlue2,
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFF5963),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFF5963),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 32.0, 20.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: const Color(0xFF14181B),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                    textAlign: TextAlign.start,
                    maxLines: null,
                    minLines: 7,
                    keyboardType: TextInputType.multiline,
                    validator: _model.contentTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(27.0, 0.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: '취소',
                      options: FFButtonOptions(
                        width: 60.0,
                        height: 32.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'noto sans',
                                  color: const Color(0xFF90929D),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          color: Color(0xFFC6C7CD),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  Builder(
                    builder: (context) => Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 28.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.ratingBarValue! < 1.0 ? true : false) {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '별점은 1점이상 설정해주세요',
                                  style: TextStyle(
                                    fontFamily: 'noto sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          } else {
                            if (_model.contentTextController.text == ''
                                ? true
                                : false) {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    '내용을 입력해주세요.',
                                    style: TextStyle(
                                      fontFamily: 'noto sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              if (_model.imgListCount.length > 5) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      '5장 미만',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              } else {
                                _model.writeReview =
                                    await ReviewsTable().insert({
                                  'created_at': supaSerialize<DateTime>(
                                      getCurrentTimestamp),
                                  'product_uid': widget.getProductUid,
                                  'user_id': currentUserUid,
                                  'comment': _model.contentTextController.text,
                                  'rating': _model.ratingBarValue,
                                  'is_pinned': false,
                                  'is_highlighted': false,
                                  'img': _model.imgUrls.map((e) => e).toList(),
                                });
                              }

                              context.safePop();
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: const ReviewSuccessCardWidget(),
                                  );
                                },
                              );
                            }
                          }

                          setState(() {});
                        },
                        text: '등록',
                        options: FFButtonOptions(
                          width: 60.0,
                          height: 32.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).electricBlue2,
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'noto sans',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
