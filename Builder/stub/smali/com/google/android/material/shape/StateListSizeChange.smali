.class public Lcom/google/android/material/shape/StateListSizeChange;
.super Ljava/lang/Object;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/StateListSizeChange$SizeChange;,
        Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;,
        Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0xa


# instance fields
.field private defaultSizeChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

.field sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

.field stateCount:I

.field stateSpecs:[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 53
    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    .line 54
    new-array v0, v0, [Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    iput-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    return-void
.end method

.method private addStateSizeChange([ILcom/google/android/material/shape/StateListSizeChange$SizeChange;)V
    .locals 2

    .line 206
    iget v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    if-eqz v0, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 207
    :cond_0
    iput-object p2, p0, Lcom/google/android/material/shape/StateListSizeChange;->defaultSizeChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0xa

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/StateListSizeChange;->growArray(II)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    iget v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    aput-object p1, v0, v1

    .line 213
    iget-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 214
    iput v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/shape/StateListSizeChange;
    .locals 5

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    .line 79
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    new-instance v0, Lcom/google/android/material/shape/StateListSizeChange;

    invoke-direct {v0}, Lcom/google/android/material/shape/StateListSizeChange;-><init>()V

    .line 81
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 84
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_5

    .line 91
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v3, "selector"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/material/shape/StateListSizeChange;->loadSizeChangeFromItems(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 96
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-object v0

    .line 89
    :cond_5
    :try_start_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_6

    .line 79
    :try_start_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object p2
.end method

.method private getSizeChangeAmount(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;)Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;
    .locals 2

    .line 189
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 195
    new-instance p3, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    sget-object v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p3, v0, p1}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;-><init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V

    return-object p3

    .line 198
    :cond_1
    iget p1, p2, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 199
    new-instance p1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    sget-object p3, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p2

    invoke-direct {p1, p3, p2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;-><init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V

    return-object p1

    :cond_2
    :goto_0
    return-object p3
.end method

.method private growArray(II)V
    .locals 3

    .line 218
    new-array v0, p2, [[I

    .line 219
    iget-object v1, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iput-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    .line 221
    new-array p2, p2, [Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    .line 222
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    invoke-static {v0, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iput-object p2, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    return-void
.end method

.method private indexOfStateSet([I)I
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateSpecs:[[I

    const/4 v1, 0x0

    .line 134
    :goto_0
    iget v2, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    if-ge v1, v2, :cond_1

    .line 135
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private loadSizeChangeFromItems(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 152
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 153
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    if-gt v3, v0, :cond_0

    .line 156
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p4, :cond_3

    .line 163
    sget-object v4, Lcom/google/android/material/R$styleable;->StateListSizeChange:[I

    invoke-virtual {v2, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_1

    .line 164
    :cond_3
    sget-object v2, Lcom/google/android/material/R$styleable;->StateListSizeChange:[I

    invoke-virtual {p4, p3, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 166
    :goto_1
    sget v4, Lcom/google/android/material/R$styleable;->StateListSizeChange_widthChange:I

    const/4 v5, 0x0

    .line 167
    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/material/shape/StateListSizeChange;->getSizeChangeAmount(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;)Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    move-result-object v4

    .line 169
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 174
    new-array v5, v2, [I

    move v6, v3

    move v7, v6

    :goto_2
    if-ge v6, v2, :cond_6

    .line 176
    invoke-interface {p3, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v8

    .line 177
    sget v9, Lcom/google/android/material/R$attr;->widthChange:I

    if-eq v8, v9, :cond_5

    add-int/lit8 v9, v7, 0x1

    .line 178
    invoke-interface {p3, v6, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    neg-int v8, v8

    :goto_3
    aput v8, v5, v7

    move v7, v9

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 181
    :cond_6
    invoke-static {v5, v7}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 182
    new-instance v3, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    invoke-direct {v3, v4}, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;-><init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;)V

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/shape/StateListSizeChange;->addStateSizeChange([ILcom/google/android/material/shape/StateListSizeChange$SizeChange;)V

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public getDefaultSizeChange()Lcom/google/android/material/shape/StateListSizeChange$SizeChange;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->defaultSizeChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    return-object v0
.end method

.method public getMaxWidthChange(I)I
    .locals 5

    neg-int v0, p1

    const/4 v1, 0x0

    .line 121
    :goto_0
    iget v2, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    if-ge v1, v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    aget-object v2, v2, v1

    .line 123
    iget-object v3, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    iget-object v3, v3, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v4, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PIXELS:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v3, v4, :cond_0

    int-to-float v0, v0

    .line 124
    iget-object v2, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    iget v2, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1
    float-to-int v0, v0

    goto :goto_2

    .line 125
    :cond_0
    iget-object v3, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    iget-object v3, v3, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    sget-object v4, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;->PERCENT:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    if-ne v3, v4, :cond_1

    int-to-float v0, v0

    int-to-float v3, p1

    .line 126
    iget-object v2, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    iget v2, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    mul-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getSizeChangeForState([I)Lcom/google/android/material/shape/StateListSizeChange$SizeChange;
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/StateListSizeChange;->indexOfStateSet([I)I

    move-result p1

    if-gez p1, :cond_0

    .line 114
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/StateListSizeChange;->indexOfStateSet([I)I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange;->defaultSizeChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->sizeChanges:[Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isStateful()Z
    .locals 2

    .line 102
    iget v0, p0, Lcom/google/android/material/shape/StateListSizeChange;->stateCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
