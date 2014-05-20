.class Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;
.super Landroid/widget/FrameLayout;
.source "QuickSettingsContainerView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettings$QSModeListener;


# instance fields
.field private mCellGap:F

.field private mNumColumns:I

.field private qsMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    return-void
.end method


# virtual methods
.method public getNumColumn()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setOverScrollMode(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildCount()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->isLayoutRtl()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v16

    const/16 v17, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v13, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v19, v0

    rem-int v5, v17, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v6

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v19, v0

    div-int v9, v17, v19

    add-int v19, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v15

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    add-int/lit8 v9, v9, 0x1

    :cond_2
    if-eqz v2, :cond_3

    sub-int v19, v14, v15

    sub-int v10, v19, v7

    :goto_2
    add-int v11, v10, v7

    move/from16 v12, v16

    add-int v19, v12, v8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v12, v11, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->layout(IIII)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v19

    add-int v17, v17, v19

    add-int/lit8 v19, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v15, v0

    goto/16 :goto_1

    :cond_3
    move v10, v15

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v15

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingLeft()I

    move-result v10

    sub-int v10, v3, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v4, :cond_0

    int-to-float v10, v6

    iget v11, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    mul-int v10, v8, v5

    int-to-float v10, v10

    add-int/lit8 v11, v8, -0x1

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v3, v10}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v7

    int-to-float v10, v7

    mul-float/2addr v10, v0

    add-int/lit8 v11, v7, -0x1

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    const/16 v11, 0x3e9

    if-ne v10, v11, :cond_2

    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_2
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->measure(II)V

    if-gtz v5, :cond_3

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getMeasuredHeight()I

    move-result v5

    :cond_3
    add-int/2addr v6, v7

    goto :goto_1
.end method

.method public onModeChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateResources()V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_eqs_columns"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    if-ne v2, v4, :cond_2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->requestLayout()V

    const-string v2, "QuickSettingsContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateResource.column:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    goto :goto_1
.end method
