import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'resenyas_model.dart';
export 'resenyas_model.dart';

class ResenyasWidget extends StatefulWidget {
  const ResenyasWidget({
    super.key,
    required this.review,
  });

  final ReviewsFullRow? review;

  @override
  State<ResenyasWidget> createState() => _ResenyasWidgetState();
}

class _ResenyasWidgetState extends State<ResenyasWidget> {
  late ResenyasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResenyasModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.localVote = valueOrDefault<int>(
        widget.review?.vote,
        0,
      );
      _model.localScore = widget.review?.likesCount;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      valueOrDefault<String>(
                        widget.review?.avatarUrl,
                        'https://images.unsplash.com/photo-1549194400-06e6874c2fd1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxmaXJld29ya3N8ZW58MHx8fHwxNzc5NDEwMTUwfDA&ixlib=rb-4.1.0&q=80&w=1080',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.review?.username,
                                'Username',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                              dateTimeFormat(
                                  "relative", widget.review!.createdAt!),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RatingBarIndicator(
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFFF400),
                              ),
                              direction: Axis.horizontal,
                              rating: widget.review!.rating!,
                              unratedColor:
                                  FlutterFlowTheme.of(context).accent1,
                              itemCount: 5,
                              itemSize: 20.0,
                            ),
                          ].divide(SizedBox(width: 2.0)),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
              Text(
                valueOrDefault<String>(
                  widget.review?.comment,
                  'Review...',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (_model.localVote == -1) {
                        await ReviewVotesTable().delete(
                          matchingRows: (rows) => rows
                              .eqOrNull(
                                'review_id',
                                widget.review?.id,
                              )
                              .eqOrNull(
                                'user_id',
                                currentUserUid,
                              ),
                        );
                        await ReviewsTable().update(
                          data: {
                            'likes_count': functions.cambiarLikes(
                                widget.review!.likesCount!, 1),
                          },
                          matchingRows: (rows) => rows
                              .eqOrNull(
                                'user_id',
                                widget.review?.userId,
                              )
                              .eqOrNull(
                                'album_id',
                                widget.review?.albumId,
                              )
                              .isFilter(
                                'track_id',
                                null,
                              ),
                        );
                        _model.localVote = _model.localVote! + 1;
                        _model.localScore = _model.localScore! + 1;
                        safeSetState(() {});
                      } else {
                        await ReviewVotesTable().insert({
                          'user_id': currentUserUid,
                          'vote': -1,
                          'review_id': widget.review?.id,
                        });
                        await ReviewsTable().update(
                          data: {
                            'likes_count': functions.cambiarLikes(
                                widget.review!.likesCount!, -1),
                          },
                          matchingRows: (rows) => rows
                              .eqOrNull(
                                'user_id',
                                widget.review?.userId,
                              )
                              .eqOrNull(
                                'album_id',
                                widget.review?.albumId,
                              )
                              .isFilter(
                                'track_id',
                                null,
                              ),
                        );
                        _model.localVote = _model.localVote! + -1;
                        _model.localScore = _model.localScore! + -1;
                        safeSetState(() {});
                      }
                    },
                    child: Icon(
                      Icons.arrow_downward_sharp,
                      color: _model.localVote == -1
                          ? Color(0xFFFF0000)
                          : Colors.black,
                      size: 24.0,
                    ),
                  ),
                  Text(
                    _model.localScore.toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (_model.localVote == 1) {
                        await ReviewVotesTable().delete(
                          matchingRows: (rows) => rows
                              .eqOrNull(
                                'review_id',
                                widget.review?.id,
                              )
                              .eqOrNull(
                                'user_id',
                                currentUserUid,
                              ),
                        );
                        await ReviewsTable().update(
                          data: {
                            'likes_count': functions.cambiarLikes(
                                widget.review!.likesCount!, -1),
                          },
                          matchingRows: (rows) => rows
                              .eqOrNull(
                                'album_id',
                                widget.review?.albumId,
                              )
                              .isFilter(
                                'track_id',
                                null,
                              )
                              .eqOrNull(
                                'user_id',
                                widget.review?.userId,
                              ),
                        );
                        _model.localVote = _model.localVote! + -1;
                        _model.localScore = _model.localScore! + -1;
                        safeSetState(() {});
                      } else {
                        await ReviewVotesTable().insert({
                          'user_id': currentUserUid,
                          'vote': 1,
                          'review_id': widget.review?.id,
                        });
                        await ReviewsTable().update(
                          data: {
                            'likes_count': functions.cambiarLikes(
                                widget.review!.likesCount!, 1),
                          },
                          matchingRows: (rows) => rows
                              .eqOrNull(
                                'user_id',
                                widget.review?.userId,
                              )
                              .eqOrNull(
                                'album_id',
                                widget.review?.albumId,
                              )
                              .isFilter(
                                'track_id',
                                null,
                              ),
                        );
                        _model.localVote = _model.localVote! + 1;
                        _model.localScore = _model.localScore! + 1;
                        safeSetState(() {});
                      }
                    },
                    child: Icon(
                      Icons.arrow_upward,
                      color: _model.localVote == 1
                          ? Color(0xFF02F910)
                          : Colors.black,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
