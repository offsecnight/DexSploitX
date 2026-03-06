.class public final Lcom/google/android/material/color/utilities/QuantizerWsmeans;
.super Ljava/lang/Object;
.source "QuantizerWsmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0xa

.field private static final MIN_MOVEMENT_DISTANCE:D = 3.0


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quantize([I[II)Ljava/util/Map;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 80
    new-instance v2, Ljava/util/Random;

    const-wide/32 v3, 0x42688

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 82
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    array-length v4, v0

    new-array v4, v4, [[D

    .line 84
    array-length v5, v0

    new-array v5, v5, [I

    .line 85
    new-instance v6, Lcom/google/android/material/color/utilities/PointProviderLab;

    invoke-direct {v6}, Lcom/google/android/material/color/utilities/PointProviderLab;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 88
    :goto_0
    array-length v10, v0

    const/4 v11, 0x1

    if-ge v8, v10, :cond_1

    .line 89
    aget v10, v0, v8

    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_0

    .line 92
    invoke-interface {v6, v10}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    move-result-object v12

    aput-object v12, v4, v9

    .line 93
    aput v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    .line 96
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 102
    :cond_1
    new-array v0, v9, [I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_2

    .line 104
    aget v10, v5, v8

    .line 105
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 106
    aput v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move/from16 v8, p2

    .line 109
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 110
    array-length v5, v1

    if-eqz v5, :cond_3

    .line 111
    array-length v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 114
    :cond_3
    new-array v5, v3, [[D

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 116
    :goto_3
    array-length v12, v1

    if-ge v8, v12, :cond_4

    .line 117
    aget v12, v1, v8

    invoke-interface {v6, v12}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    move-result-object v12

    aput-object v12, v5, v8

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    sub-int v1, v3, v10

    if-lez v1, :cond_5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v1, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 126
    :cond_5
    new-array v1, v9, [I

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v9, :cond_6

    .line 128
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    aput v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 131
    :cond_6
    new-array v2, v3, [[I

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v3, :cond_7

    .line 133
    new-array v10, v3, [I

    aput-object v10, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 136
    :cond_7
    new-array v8, v3, [[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v3, :cond_9

    .line 138
    new-array v12, v3, [Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    aput-object v12, v8, v10

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v3, :cond_8

    .line 140
    aget-object v13, v8, v10

    new-instance v14, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    invoke-direct {v14}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;-><init>()V

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 144
    :cond_9
    new-array v10, v3, [I

    const/4 v12, 0x0

    :goto_9
    const/16 v13, 0xa

    if-ge v12, v13, :cond_16

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v3, :cond_c

    add-int/lit8 v14, v13, 0x1

    move v15, v14

    :goto_b
    if-ge v15, v3, :cond_a

    move/from16 v16, v11

    .line 148
    aget-object v11, v5, v13

    aget-object v7, v5, v15

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    invoke-interface {v6, v11, v7}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v0

    .line 149
    aget-object v7, v8, v15

    aget-object v7, v7, v13

    iput-wide v0, v7, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 150
    aget-object v7, v8, v15

    aget-object v7, v7, v13

    iput v13, v7, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    .line 151
    aget-object v7, v8, v13

    aget-object v7, v7, v15

    iput-wide v0, v7, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 152
    aget-object v0, v8, v13

    aget-object v0, v0, v15

    iput v15, v0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, v16

    goto :goto_b

    :cond_a
    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 v16, v11

    .line 154
    aget-object v0, v8, v13

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v3, :cond_b

    .line 156
    aget-object v1, v2, v13

    aget-object v7, v8, v13

    aget-object v7, v7, v0

    iget v7, v7, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    aput v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v13, v14

    move/from16 v11, v16

    goto :goto_a

    :cond_c
    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 v16, v11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, v9, :cond_11

    .line 162
    aget-object v7, v4, v0

    .line 163
    aget v11, p1, v0

    .line 164
    aget-object v13, v5, v11

    .line 165
    invoke-interface {v6, v7, v13}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v13

    move/from16 v18, v0

    move-wide/from16 v19, v13

    const/4 v0, -0x1

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v3, :cond_f

    .line 170
    aget-object v21, v8, v11

    move/from16 v22, v1

    aget-object v1, v21, v15

    move-object/from16 v21, v2

    iget-wide v1, v1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    const-wide/high16 v23, 0x4010000000000000L    # 4.0

    mul-double v23, v23, v13

    cmpl-double v1, v1, v23

    if-ltz v1, :cond_d

    goto :goto_f

    .line 173
    :cond_d
    aget-object v1, v5, v15

    invoke-interface {v6, v7, v1}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v1

    cmpg-double v23, v1, v19

    if-gez v23, :cond_e

    move-wide/from16 v19, v1

    move v0, v15

    :cond_e
    :goto_f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v21

    move/from16 v1, v22

    goto :goto_e

    :cond_f
    move/from16 v22, v1

    move-object/from16 v21, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 181
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    sub-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    cmpl-double v1, v1, v13

    if-lez v1, :cond_10

    add-int/lit8 v1, v22, 0x1

    .line 184
    aput v0, p1, v18

    goto :goto_10

    :cond_10
    move/from16 v1, v22

    :goto_10
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v2, v21

    goto :goto_d

    :cond_11
    move/from16 v22, v1

    move-object/from16 v21, v2

    if-nez v22, :cond_12

    if-eqz v12, :cond_12

    goto/16 :goto_14

    .line 193
    :cond_12
    new-array v0, v3, [D

    .line 194
    new-array v1, v3, [D

    .line 195
    new-array v2, v3, [D

    const/4 v7, 0x0

    .line 196
    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([II)V

    move v11, v7

    :goto_11
    if-ge v11, v9, :cond_13

    .line 198
    aget v14, p1, v11

    .line 199
    aget-object v15, v4, v11

    move/from16 v17, v7

    .line 200
    aget v7, p0, v11

    .line 201
    aget v18, v10, v14

    add-int v18, v18, v7

    aput v18, v10, v14

    .line 202
    aget-wide v18, v0, v14

    aget-wide v22, v15, v17

    move/from16 v20, v14

    const/16 p2, 0x2

    int-to-double v13, v7

    mul-double v22, v22, v13

    add-double v18, v18, v22

    aput-wide v18, v0, v20

    .line 203
    aget-wide v18, v1, v20

    aget-wide v22, v15, v16

    mul-double v22, v22, v13

    add-double v18, v18, v22

    aput-wide v18, v1, v20

    .line 204
    aget-wide v18, v2, v20

    aget-wide v22, v15, p2

    mul-double v22, v22, v13

    add-double v18, v18, v22

    aput-wide v18, v2, v20

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_11

    :cond_13
    const/16 p2, 0x2

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v3, :cond_15

    .line 208
    aget v11, v10, v7

    if-nez v11, :cond_14

    const/4 v11, 0x3

    .line 210
    new-array v11, v11, [D

    fill-array-data v11, :array_0

    aput-object v11, v5, v7

    move-object v15, v0

    move-object/from16 v18, v1

    const/16 v17, 0x0

    goto :goto_13

    .line 213
    :cond_14
    aget-wide v13, v0, v7

    move-object v15, v0

    move-object/from16 v18, v1

    int-to-double v0, v11

    div-double/2addr v13, v0

    .line 214
    aget-wide v19, v18, v7

    div-double v19, v19, v0

    .line 215
    aget-wide v22, v2, v7

    div-double v22, v22, v0

    .line 216
    aget-object v0, v5, v7

    const/16 v17, 0x0

    aput-wide v13, v0, v17

    .line 217
    aput-wide v19, v0, v16

    .line 218
    aput-wide v22, v0, p2

    :goto_13
    add-int/lit8 v7, v7, 0x1

    move-object v0, v15

    move-object/from16 v1, v18

    goto :goto_12

    :cond_15
    const/16 v17, 0x0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v11, v16

    move-object/from16 v2, v21

    goto/16 :goto_9

    :cond_16
    :goto_14
    const/16 v17, 0x0

    .line 222
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move/from16 v7, v17

    :goto_15
    if-ge v7, v3, :cond_19

    .line 224
    aget v1, v10, v7

    if-nez v1, :cond_17

    goto :goto_16

    .line 229
    :cond_17
    aget-object v2, v5, v7

    invoke-interface {v6, v2}, Lcom/google/android/material/color/utilities/PointProvider;->toInt([D)I

    move-result v2

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_16

    .line 234
    :cond_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_19
    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method
