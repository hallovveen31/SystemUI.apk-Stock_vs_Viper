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
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 46
    return-void
.end method


# virtual methods
.method public getNumColumn()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 51
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setOverScrollMode(I)V

    .line 52
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildCount()I

    move-result v2

    .line 117
    .local v2, N:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->isLayoutRtl()Z

    move-result v14

    .line 118
    .local v14, isLayoutRtl:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getWidth()I

    move-result v17

    .line 120
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v18

    .line 121
    .local v18, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v19

    .line 122
    .local v19, y:I
    const/4 v12, 0x0

    .line 124
    .local v12, cursor:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v2, :cond_4

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 126
    .local v3, child:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 127
    .local v15, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v20, v0

    rem-int v10, v12, v20

    .line 129
    .local v10, col:I
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v11

    .line 131
    .local v11, colSpan:I
    iget v9, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    .local v9, childWidth:I
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    .local v5, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v20, v0

    div-int v16, v12, v20

    .line 137
    .local v16, row:I
    add-int v20, v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v18

    .line 139
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 140
    add-int/lit8 v16, v16, 0x1

    .line 143
    :cond_0
    if-eqz v14, :cond_2

    sub-int v20, v17, v18

    sub-int v6, v20, v9

    .line 144
    .local v6, childLeft:I
    :goto_1
    add-int v7, v6, v9

    .line 146
    .local v7, childRight:I
    move/from16 v8, v19

    .line 147
    .local v8, childTop:I
    add-int v4, v8, v5

    .line 150
    .local v4, childBottom:I
    invoke-virtual {v3, v6, v8, v7, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->layout(IIII)V

    .line 154
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v20

    add-int v12, v12, v20

    .line 155
    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    .line 156
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 124
    .end local v4           #childBottom:I
    .end local v5           #childHeight:I
    .end local v6           #childLeft:I
    .end local v7           #childRight:I
    .end local v8           #childTop:I
    .end local v9           #childWidth:I
    .end local v10           #col:I
    .end local v11           #colSpan:I
    .end local v16           #row:I
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .restart local v5       #childHeight:I
    .restart local v9       #childWidth:I
    .restart local v10       #col:I
    .restart local v11       #colSpan:I
    .restart local v16       #row:I
    :cond_2
    move/from16 v6, v18

    .line 143
    goto :goto_1

    .line 158
    .restart local v4       #childBottom:I
    .restart local v6       #childLeft:I
    .restart local v7       #childRight:I
    .restart local v8       #childTop:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v18

    .line 159
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto :goto_2

    .line 163
    .end local v3           #child:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .end local v4           #childBottom:I
    .end local v5           #childHeight:I
    .end local v6           #childLeft:I
    .end local v7           #childRight:I
    .end local v8           #childTop:I
    .end local v9           #childWidth:I
    .end local v10           #col:I
    .end local v11           #colSpan:I
    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v16           #row:I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 69
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 70
    .local v16, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 71
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingLeft()I

    move-result v17

    sub-int v17, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v3, v0

    .line 73
    .local v3, availableWidth:I
    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v5, v0

    .line 76
    .local v5, cellWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildCount()I

    move-result v2

    .line 77
    .local v2, N:I
    const/4 v4, 0x0

    .line 78
    .local v4, cellHeight:I
    const/4 v7, 0x0

    .line 79
    .local v7, cursor:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v2, :cond_3

    .line 81
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 82
    .local v15, v:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 83
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    .local v10, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v6

    .line 85
    .local v6, colSpan:I
    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v5

    add-int/lit8 v18, v6, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    move/from16 v17, v0

    const/16 v18, 0x3e9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 90
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 94
    :cond_0
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 95
    .local v13, newWidthSpec:I
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 96
    .local v12, newHeightSpec:I
    invoke-virtual {v15, v13, v12}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->measure(II)V

    .line 99
    if-gtz v4, :cond_1

    .line 100
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getMeasuredHeight()I

    move-result v4

    .line 102
    :cond_1
    add-int/2addr v7, v6

    .line 79
    .end local v6           #colSpan:I
    .end local v10           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12           #newHeightSpec:I
    .end local v13           #newWidthSpec:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 108
    .end local v15           #v:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_3
    int-to-float v0, v7

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v14, v0

    .line 109
    .local v14, numRows:I
    mul-int v17, v14, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-int/lit8 v18, v14, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingBottom()I

    move-result v18

    add-int v11, v17, v18

    .line 111
    .local v11, newHeight:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setMeasuredDimension(II)V

    .line 112
    return-void
.end method

.method public onModeChanged(I)V
    .locals 1
    .parameter "_mode"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method updateResources()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x205000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    .line 58
    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->requestLayout()V

    .line 63
    const-string v1, "QuickSettingsContainerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateResource.column:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->qsMode:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 58
    :cond_0
    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method
