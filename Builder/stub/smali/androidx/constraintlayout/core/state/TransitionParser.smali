.class public Landroidx/constraintlayout/core/state/TransitionParser;
.super Ljava/lang/Object;
.source "TransitionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs map(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 154
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static varargs map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 162
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 163
    aget-object v1, p3, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/Transition;->resetProperties()V

    .line 61
    const-string v0, "pathMotionArc"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "below"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v9, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "above"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v9, v6

    goto :goto_0

    :sswitch_2
    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v9, v7

    goto :goto_0

    :sswitch_3
    const-string v4, "flip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v9, v8

    goto :goto_0

    :sswitch_4
    const-string v4, "startHorizontal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v9, v2

    goto :goto_0

    :sswitch_5
    const-string v4, "startVertical"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v9, v3

    :goto_0
    const/16 v0, 0x1fd

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 81
    :pswitch_0
    invoke-virtual {v1, v0, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_1

    .line 84
    :pswitch_1
    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_1

    .line 69
    :pswitch_2
    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_1

    .line 78
    :pswitch_3
    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_1

    .line 75
    :pswitch_4
    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_1

    .line 72
    :pswitch_5
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    :goto_1
    move v3, v2

    .line 89
    :cond_6
    const-string v0, "interpolator"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v3, 0x2c1

    .line 92
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    move v3, v2

    .line 95
    :cond_7
    const-string v0, "staggered"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v0

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v3, 0x2c2

    .line 98
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    if-eqz v2, :cond_9

    .line 101
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/state/Transition;->setTransitionProperties(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    .line 104
    :cond_9
    const-string v0, "onSwipe"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 107
    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseOnSwipe(Landroidx/constraintlayout/core/parser/CLContainer;Landroidx/constraintlayout/core/state/Transition;)V

    .line 109
    :cond_a
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyFrames(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6eaff208 -> :sswitch_5
        -0x3c0665da -> :sswitch_4
        0x30006d -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x585239d -> :sswitch_1
        0x5948c31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;Landroidx/constraintlayout/core/state/CorePixelDp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    return-void
.end method

.method private static parseKeyAttribute(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    const-string v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_f

    .line 273
    :cond_0
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_f

    .line 277
    :cond_1
    const-string v4, "transitionEasing"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    .line 279
    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "scaleX"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "scaleY"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "translationX"

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const/4 v7, 0x3

    const-string v11, "translationY"

    aput-object v11, v6, v7

    const/4 v7, 0x4

    const-string v11, "translationZ"

    aput-object v11, v6, v7

    const/4 v7, 0x5

    const-string v11, "rotationX"

    aput-object v11, v6, v7

    const/4 v7, 0x6

    const-string v11, "rotationY"

    aput-object v11, v6, v7

    const/4 v7, 0x7

    const-string v11, "rotationZ"

    aput-object v11, v6, v7

    const/16 v7, 0x8

    const-string v11, "alpha"

    aput-object v11, v6, v7

    .line 290
    new-array v7, v5, [I

    fill-array-data v7, :array_0

    .line 302
    new-array v11, v5, [Z

    fill-array-data v11, :array_1

    .line 313
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    new-array v13, v12, [Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    move v14, v8

    .line 316
    :goto_0
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 317
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    move v14, v8

    :goto_1
    if-ge v14, v5, :cond_9

    .line 322
    aget-object v15, v6, v14

    .line 323
    aget v5, v7, v14

    .line 324
    aget-boolean v16, v11, v14

    move/from16 v17, v9

    .line 325
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v9

    move/from16 v18, v8

    if-eqz v9, :cond_4

    .line 327
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v8

    if-ne v8, v12, :cond_3

    goto :goto_2

    .line 328
    :cond_3
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "incorrect size for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " array, not matching targets array!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :cond_4
    :goto_2
    if-eqz v9, :cond_6

    move/from16 v8, v18

    :goto_3
    if-ge v8, v12, :cond_8

    .line 334
    invoke-virtual {v9, v8}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result v15

    if-eqz v16, :cond_5

    .line 336
    iget-object v10, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v10, v15}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v15

    .line 338
    :cond_5
    aget-object v10, v13, v8

    invoke-virtual {v10, v5, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x2

    goto :goto_3

    .line 341
    :cond_6
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v8

    .line 342
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v16, :cond_7

    .line 344
    iget-object v9, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v9, v8}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v8

    :cond_7
    move/from16 v9, v18

    :goto_4
    if-ge v9, v12, :cond_8

    .line 347
    aget-object v10, v13, v9

    invoke-virtual {v10, v5, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v17

    move/from16 v8, v18

    const/16 v5, 0x9

    const/4 v10, 0x2

    goto :goto_1

    :cond_9
    move/from16 v18, v8

    move/from16 v17, v9

    .line 353
    const-string v5, "custom"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 354
    instance-of v7, v5, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v7, :cond_10

    .line 355
    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 356
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    move-result v7

    .line 357
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v8

    const/4 v9, 0x2

    new-array v10, v9, [I

    aput v7, v10, v17

    aput v8, v10, v18

    const-class v8, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Landroidx/constraintlayout/core/motion/CustomVariable;

    move/from16 v9, v18

    :goto_5
    if-ge v9, v7, :cond_11

    .line 359
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/parser/CLObject;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/parser/CLKey;

    .line 360
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    move-result-object v11

    .line 361
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v14

    instance-of v14, v14, Landroidx/constraintlayout/core/parser/CLArray;

    const-wide/16 v19, -0x1

    if-eqz v14, :cond_d

    .line 362
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/parser/CLArray;

    .line 363
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v14

    if-ne v14, v12, :cond_c

    if-lez v14, :cond_c

    move/from16 v14, v18

    .line 365
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v15

    instance-of v14, v15, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v12, :cond_c

    .line 367
    aget-object v15, v8, v14

    new-instance v6, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 369
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v16

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v5

    move/from16 v22, v7

    const/16 v7, 0x385

    invoke-direct {v6, v11, v7, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    aput-object v6, v15, v9

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v21

    move/from16 v7, v22

    goto :goto_6

    :cond_a
    move-object/from16 v21, v5

    move/from16 v22, v7

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v12, :cond_f

    .line 373
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v19

    if-eqz v7, :cond_b

    .line 375
    aget-object v7, v8, v14

    new-instance v15, Landroidx/constraintlayout/core/motion/CustomVariable;

    long-to-int v5, v5

    const/16 v6, 0x386

    invoke-direct {v15, v11, v6, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    aput-object v15, v7, v9

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_c
    move-object/from16 v21, v5

    move/from16 v22, v7

    goto :goto_a

    :cond_d
    move-object/from16 v21, v5

    move/from16 v22, v7

    .line 383
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    .line 384
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v6, :cond_e

    .line 385
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v5

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v12, :cond_f

    .line 387
    aget-object v6, v8, v14

    new-instance v7, Landroidx/constraintlayout/core/motion/CustomVariable;

    const/16 v10, 0x385

    invoke-direct {v7, v11, v10, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    aput-object v7, v6, v9

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 392
    :cond_e
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v19

    if-eqz v7, :cond_f

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v12, :cond_f

    .line 395
    aget-object v7, v8, v14

    new-instance v10, Landroidx/constraintlayout/core/motion/CustomVariable;

    long-to-int v15, v5

    move-wide/from16 v19, v5

    const/16 v5, 0x386

    invoke-direct {v10, v11, v5, v15}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    aput-object v10, v7, v9

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v5, v19

    goto :goto_9

    :cond_f
    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v21

    move/from16 v7, v22

    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_10
    const/4 v8, 0x0

    .line 406
    :cond_11
    const-string v5, "curveFit"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    .line 407
    :goto_b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v5

    if-ge v14, v5, :cond_15

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v12, :cond_14

    .line 409
    invoke-virtual {v2, v14}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 410
    aget-object v7, v13, v5

    const/4 v9, 0x2

    if-eqz v0, :cond_12

    .line 412
    new-array v10, v9, [Ljava/lang/String;

    const-string v11, "spline"

    const/16 v18, 0x0

    aput-object v11, v10, v18

    const-string v11, "linear"

    aput-object v11, v10, v17

    .line 413
    invoke-static {v0, v10}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x1fc

    .line 412
    invoke-virtual {v7, v11, v10}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_d

    :cond_12
    const/16 v18, 0x0

    :goto_d
    const/16 v10, 0x1f5

    .line 415
    invoke-virtual {v7, v10, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    .line 417
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v10

    const/16 v11, 0x64

    .line 418
    invoke-virtual {v7, v11, v10}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    if-eqz v8, :cond_13

    .line 419
    aget-object v10, v8, v5

    goto :goto_e

    :cond_13
    const/4 v10, 0x0

    :goto_e
    invoke-virtual {v1, v6, v7, v10}, Landroidx/constraintlayout/core/state/Transition;->addKeyAttribute(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;[Landroidx/constraintlayout/core/motion/CustomVariable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_14
    const/4 v9, 0x2

    const/16 v18, 0x0

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_15
    :goto_f
    return-void

    :array_0
    .array-data 4
        0x137
        0x138
        0x130
        0x131
        0x132
        0x134
        0x135
        0x136
        0x12f
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static parseKeyCycle(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 427
    const-string v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    .line 428
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    .line 429
    const-string v4, "transitionEasing"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    .line 431
    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "scaleX"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "scaleY"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "translationX"

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const/4 v7, 0x3

    const-string v11, "translationY"

    aput-object v11, v6, v7

    const/4 v7, 0x4

    const-string v11, "translationZ"

    aput-object v11, v6, v7

    const/4 v7, 0x5

    const-string v11, "rotationX"

    aput-object v11, v6, v7

    const/4 v7, 0x6

    const-string v11, "rotationY"

    aput-object v11, v6, v7

    const/4 v7, 0x7

    const-string v11, "rotationZ"

    aput-object v11, v6, v7

    const/16 v7, 0x8

    const-string v11, "alpha"

    aput-object v11, v6, v7

    const/16 v7, 0x9

    const-string v11, "period"

    aput-object v11, v6, v7

    const/16 v7, 0xa

    const-string v11, "offset"

    aput-object v11, v6, v7

    const/16 v7, 0xb

    const-string v11, "phase"

    aput-object v11, v6, v7

    .line 445
    new-array v7, v5, [I

    fill-array-data v7, :array_0

    .line 462
    new-array v11, v5, [I

    fill-array-data v11, :array_1

    .line 478
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    new-array v13, v12, [Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    move v14, v8

    :goto_0
    if-ge v14, v12, :cond_0

    .line 480
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move v14, v8

    move v15, v14

    :goto_1
    if-ge v14, v5, :cond_2

    .line 484
    aget-object v8, v6, v14

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget v8, v11, v14

    if-ne v8, v9, :cond_1

    move v15, v9

    :cond_1
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_c

    .line 489
    aget-object v14, v6, v8

    .line 490
    aget v5, v7, v8

    .line 491
    aget v10, v11, v8

    .line 492
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v9

    move-object/from16 v16, v6

    if-eqz v9, :cond_4

    .line 494
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v6

    if-ne v6, v12, :cond_3

    goto :goto_3

    .line 495
    :cond_3
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string v2, "incorrect size for $attrName array, not matching targets array!"

    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :cond_4
    :goto_3
    if-eqz v9, :cond_7

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_a

    .line 502
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result v14

    move/from16 v17, v6

    const/4 v6, 0x1

    if-ne v10, v6, :cond_5

    .line 504
    iget-object v6, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v6, v14}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v14

    goto :goto_5

    :cond_5
    const/4 v6, 0x2

    if-ne v10, v6, :cond_6

    if-eqz v15, :cond_6

    .line 506
    iget-object v6, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v6, v14}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v14

    .line 508
    :cond_6
    :goto_5
    aget-object v6, v13, v17

    invoke-virtual {v6, v5, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_4

    .line 511
    :cond_7
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLObject;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v6

    .line 512
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_a

    const/4 v9, 0x1

    if-ne v10, v9, :cond_8

    .line 514
    iget-object v9, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v9, v6}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v6

    const/4 v9, 0x2

    goto :goto_6

    :cond_8
    const/4 v9, 0x2

    if-ne v10, v9, :cond_9

    if-eqz v15, :cond_9

    .line 516
    iget-object v10, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    invoke-interface {v10, v6}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    move-result v6

    :cond_9
    :goto_6
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v12, :cond_b

    .line 519
    aget-object v14, v13, v10

    invoke-virtual {v14, v5, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_a
    const/4 v9, 0x2

    :cond_b
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    move-object/from16 v6, v16

    const/16 v5, 0xc

    const/4 v9, 0x1

    goto :goto_2

    .line 524
    :cond_c
    const-string v5, "curveFit"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 525
    const-string v6, "easing"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    const-string v7, "waveShape"

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 527
    const-string v8, "customWave"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 528
    :goto_8
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_14

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v12, :cond_13

    .line 530
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 531
    aget-object v11, v13, v9

    if-eqz v5, :cond_f

    .line 535
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v14, "linear"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v15, 0x191

    if-nez v14, :cond_e

    const-string v14, "spline"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_a

    :cond_d
    const/4 v14, 0x0

    .line 537
    invoke-virtual {v11, v15, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_a

    :cond_e
    const/4 v14, 0x1

    .line 540
    invoke-virtual {v11, v15, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v14, 0x1

    :goto_b
    const/16 v15, 0x1f5

    .line 544
    invoke-virtual {v11, v15, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    if-eqz v6, :cond_10

    const/16 v15, 0x1a4

    .line 547
    invoke-virtual {v11, v15, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    :cond_10
    if-eqz v7, :cond_11

    const/16 v15, 0x1a5

    .line 550
    invoke-virtual {v11, v15, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    :cond_11
    if-eqz v0, :cond_12

    const/16 v15, 0x1a6

    .line 553
    invoke-virtual {v11, v15, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 556
    :cond_12
    invoke-virtual {v3, v9}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v15

    const/16 v14, 0x64

    .line 557
    invoke-virtual {v11, v14, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 558
    invoke-virtual {v1, v10, v11}, Landroidx/constraintlayout/core/state/Transition;->addKeyCycle(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_14
    return-void

    nop

    :array_0
    .array-data 4
        0x137
        0x138
        0x130
        0x131
        0x132
        0x134
        0x135
        0x136
        0x193
        0x1a7
        0x1a8
        0x1a9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data
.end method

.method public static parseKeyFrames(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 177
    const-string v0, "KeyFrames"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLObject;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 179
    :cond_0
    const-string v0, "KeyPositions"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    .line 181
    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 182
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    .line 183
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v4, :cond_1

    .line 184
    check-cast v3, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v3, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyPosition(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "KeyAttributes"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v0

    if-eqz v0, :cond_4

    move v2, v1

    .line 190
    :goto_1
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 191
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    .line 192
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v4, :cond_3

    .line 193
    check-cast v3, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v3, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyAttribute(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    :cond_4
    const-string v0, "KeyCycles"

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 199
    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 200
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/parser/CLArray;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    .line 201
    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v2, :cond_5

    .line 202
    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyCycle(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method private static parseKeyPosition(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 211
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 212
    const-string v2, "target"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v2

    .line 213
    const-string v3, "frames"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLObject;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v3

    .line 214
    const-string v4, "percentX"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v4

    .line 215
    const-string v5, "percentY"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v5

    .line 216
    const-string v6, "percentWidth"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v6

    .line 217
    const-string v7, "percentHeight"

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLObject;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    move-result-object v7

    .line 218
    const-string v8, "pathMotionArc"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 219
    const-string v9, "transitionEasing"

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 220
    const-string v10, "curveFit"

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 221
    const-string v11, "type"

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/parser/CLObject;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v11, "parentRelative"

    if-nez v0, :cond_0

    move-object v0, v11

    :cond_0
    if-eqz v4, :cond_1

    .line 225
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v13

    if-eq v12, v13, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v5, :cond_2

    .line 228
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v12

    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v13

    if-eq v12, v13, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 231
    :goto_0
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 232
    invoke-virtual {v2, v13}, Landroidx/constraintlayout/core/parser/CLArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    const/16 p0, 0x0

    .line 233
    new-array v12, v15, [Ljava/lang/String;

    const-string v16, "deltaRelative"

    aput-object v16, v12, p0

    const-string v16, "pathRelative"

    const/16 v17, 0x1

    aput-object v16, v12, v17

    move/from16 v16, v15

    const/4 v15, 0x2

    aput-object v11, v12, v15

    invoke-static {v0, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 234
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->clear()V

    const/16 v15, 0x1fe

    .line 235
    invoke-virtual {v1, v15, v12}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    if-eqz v10, :cond_3

    const/4 v12, 0x2

    .line 237
    new-array v15, v12, [Ljava/lang/String;

    const-string v12, "spline"

    aput-object v12, v15, p0

    const-string v12, "linear"

    aput-object v12, v15, v17

    const/16 v12, 0x1fc

    invoke-static {v1, v12, v10, v15}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V

    :cond_3
    const/16 v12, 0x1f5

    .line 240
    invoke-virtual {v1, v12, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    if-eqz v8, :cond_4

    const/4 v12, 0x6

    .line 243
    new-array v12, v12, [Ljava/lang/String;

    const-string v15, "none"

    aput-object v15, v12, p0

    const-string v15, "startVertical"

    aput-object v15, v12, v17

    const-string v15, "startHorizontal"

    const/16 v18, 0x2

    aput-object v15, v12, v18

    const-string v15, "flip"

    aput-object v15, v12, v16

    const/4 v15, 0x4

    const-string v16, "below"

    aput-object v16, v12, v15

    const/4 v15, 0x5

    const-string v16, "above"

    aput-object v16, v12, v15

    const/16 v15, 0x1fd

    invoke-static {v1, v15, v8, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V

    :cond_4
    move/from16 v12, p0

    .line 247
    :goto_1
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLArray;->size()I

    move-result v15

    if-ge v12, v15, :cond_5

    .line 248
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/core/parser/CLArray;->getInt(I)I

    move-result v15

    move-object/from16 v16, v0

    const/16 v0, 0x64

    .line 249
    invoke-virtual {v1, v0, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    const/16 v0, 0x1fa

    .line 250
    invoke-static {v1, v0, v4, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    const/16 v0, 0x1fb

    .line 251
    invoke-static {v1, v0, v5, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    const/16 v0, 0x1f7

    .line 252
    invoke-static {v1, v0, v6, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    const/16 v0, 0x1f8

    .line 253
    invoke-static {v1, v0, v7, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    move-object/from16 v0, p1

    .line 255
    invoke-virtual {v0, v14, v1}, Landroidx/constraintlayout/core/state/Transition;->addKeyPosition(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v0, p1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private static parseOnSwipe(Landroidx/constraintlayout/core/parser/CLContainer;Landroidx/constraintlayout/core/state/Transition;)V
    .locals 17

    move-object/from16 v0, p0

    .line 113
    const-string v1, "anchor"

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, "side"

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->SIDES:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 115
    const-string v3, "direction"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->DIRECTIONS:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 117
    const-string v4, "scale"

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v4

    .line 118
    const-string v5, "threshold"

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v5

    .line 119
    const-string v6, "maxVelocity"

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v6

    .line 120
    const-string v7, "maxAccel"

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v7

    .line 121
    const-string v8, "limitBounds"

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    const-string v9, "mode"

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->MODE:[Ljava/lang/String;

    invoke-static {v9, v10}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 123
    const-string v10, "touchUp"

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_UP:[Ljava/lang/String;

    invoke-static {v10, v11}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 124
    const-string v11, "springMass"

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v11

    .line 125
    const-string v12, "springStiffness"

    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v12

    .line 126
    const-string v13, "springDamping"

    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v13

    .line 127
    const-string v14, "stopThreshold"

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    move-result v14

    .line 128
    const-string v15, "springBoundary"

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v14

    sget-object v14, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->BOUNDARY:[Ljava/lang/String;

    invoke-static {v15, v14}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 130
    const-string v15, "around"

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/state/Transition;->createOnSwipe()Landroidx/constraintlayout/core/state/Transition$OnSwipe;

    move-result-object v15

    .line 133
    invoke-virtual {v15, v1}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAnchorId(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAnchorSide(I)V

    .line 135
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragDirection(I)V

    .line 136
    invoke-virtual {v15, v4}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragScale(F)V

    .line 137
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragThreshold(F)V

    .line 138
    invoke-virtual {v15, v6}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setMaxVelocity(F)V

    .line 139
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setMaxAcceleration(F)V

    .line 140
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setLimitBoundsTo(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v15, v9}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAutoCompleteMode(I)V

    .line 142
    invoke-virtual {v15, v10}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setOnTouchUp(I)V

    .line 143
    invoke-virtual {v15, v11}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringMass(F)V

    .line 144
    invoke-virtual {v15, v12}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringStiffness(F)V

    .line 145
    invoke-virtual {v15, v13}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringDamping(F)V

    move/from16 v1, v16

    .line 146
    invoke-virtual {v15, v1}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringStopThreshold(F)V

    .line 147
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringBoundary(I)V

    .line 148
    invoke-virtual {v15, v0}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setRotationCenterId(Ljava/lang/String;)V

    return-void
.end method

.method private static set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/parser/CLArray;->getFloat(I)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    :cond_0
    return-void
.end method
