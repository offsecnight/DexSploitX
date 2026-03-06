.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 55
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 62
    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getMeasuredDimension(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    return p0

    .line 177
    :cond_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 70
    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_horizontalItemSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 71
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method protected getLineSpacing()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method protected getRowCount()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .locals 1

    .line 253
    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 254
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 257
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isSingleLine()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 185
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 187
    iput v2, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 190
    iput v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 192
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 193
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v4

    :goto_1
    if-eqz v3, :cond_3

    .line 194
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v5

    .line 196
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v6

    move v8, v2

    move v9, v4

    move v7, v6

    .line 200
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v10

    if-ge v8, v10, :cond_8

    .line 201
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 203
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_4

    .line 204
    sget v11, Lcom/google/android/material/R$id;->row_index_key:I

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move/from16 p1, v1

    goto :goto_6

    .line 208
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 211
    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_5

    .line 212
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v12

    .line 214
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v11

    goto :goto_4

    :cond_5
    move v11, v2

    move v12, v11

    :goto_4
    add-int v13, v9, v12

    .line 217
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    sub-int v14, p4, p2

    sub-int v15, v14, v5

    move/from16 p1, v1

    .line 220
    iget-boolean v1, v0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    if-nez v1, :cond_6

    if-le v13, v15, :cond_6

    add-int v1, v4, v12

    .line 222
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v13, v1, v7

    .line 223
    iget v1, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int v7, v6, v1

    .line 224
    iget v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    move v9, v4

    .line 226
    :cond_6
    sget v1, Lcom/google/android/material/R$id;->row_index_key:I

    iget v6, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 227
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v7

    if-eqz v3, :cond_7

    sub-int v6, v14, v13

    sub-int/2addr v14, v9

    sub-int/2addr v14, v12

    .line 230
    invoke-virtual {v10, v6, v7, v14, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_7
    add-int v6, v9, v12

    .line 236
    invoke-virtual {v10, v6, v7, v13, v1}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/2addr v12, v11

    .line 243
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v12, v6

    iget v6, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v12, v6

    add-int/2addr v9, v12

    move v6, v1

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    goto/16 :goto_3

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    .line 102
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 105
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 106
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7fffffff

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    .line 113
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 114
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 118
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 119
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v12

    if-ge v10, v12, :cond_7

    .line 120
    invoke-virtual {v0, v10}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 122
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_5

    :cond_2
    move/from16 v13, p1

    move/from16 v14, p2

    .line 125
    invoke-virtual {v0, v12, v13, v14}, Lcom/google/android/material/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 127
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 130
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 131
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 133
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_3
    add-int v16, v6, v8

    .line 136
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v18, v6

    add-int v6, v16, v17

    if-le v6, v5, :cond_4

    .line 141
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v6

    if-nez v6, :cond_4

    .line 142
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 143
    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int/2addr v9, v7

    goto :goto_4

    :cond_4
    move/from16 v6, v18

    :goto_4
    add-int v7, v6, v8

    .line 146
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v7, v7, v16

    .line 147
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v9, v16

    if-le v7, v11, :cond_5

    move v11, v7

    :cond_5
    add-int/2addr v8, v15

    .line 154
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v8, v7

    iget v7, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v8, v7

    add-int/2addr v6, v8

    .line 159
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v10, v7, :cond_6

    add-int/2addr v11, v15

    :cond_6
    move/from16 v7, v16

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 164
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v11, v5

    .line 165
    invoke-virtual {v0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v7, v5

    .line 167
    invoke-static {v1, v2, v11}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v1

    .line 168
    invoke-static {v3, v4, v7}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v2

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setItemSpacing(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return-void
.end method
