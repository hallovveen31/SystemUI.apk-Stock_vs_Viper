.class public Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.super Landroid/widget/LinearLayout;
.source "QuickSettingsTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field private static focusDrawable:Landroid/graphics/drawable/Drawable;

.field protected static final isSprintBrand:Z


# instance fields
.field protected draw_color:Z

.field private gainFocus:Z

.field private mColSpan:I

.field private mContentLayoutId:I

.field private mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

.field private mPrepared:Z

.field private mRowSpan:I

.field private oldFlipFont:I

.field private oldLocale:Ljava/util/Locale;

.field private overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

.field private resetTouchDelegate:Z

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;

.field public tileLabel:Ljava/lang/String;

.field public tileRemoveable:Z

.field private touchChildView:Landroid/view/View;

.field private touchParentView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isSprintBrand:Z

    return-void

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileRemoveable:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldLocale:Ljava/util/Locale;

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldFlipFont:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->gainFocus:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContentLayoutId:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mRowSpan:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private directionToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const-string v0, "FOCUS_UNKNOWN"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "FOCUS_BACKWARD"

    goto :goto_0

    :sswitch_1
    const-string v0, "FOCUS_FORWARD"

    goto :goto_0

    :sswitch_2
    const-string v0, "FOCUS_RIGHT"

    goto :goto_0

    :sswitch_3
    const-string v0, "FOCUS_LEFT"

    goto :goto_0

    :sswitch_4
    const-string v0, "FOCUS_DOWN"

    goto :goto_0

    :sswitch_5
    const-string v0, " FOCUS_UP"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_3
        0x21 -> :sswitch_5
        0x42 -> :sswitch_2
        0x82 -> :sswitch_4
    .end sparse-switch
.end method

.method private isParentVisible()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private isToggle()Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "wifi"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "bluetooth"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "airplane"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "power_saver"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "rotation"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "mobile_data"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "wifi_hotspot"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "gps"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "roaming"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "auto_sync"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "apn"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "do_not_disturb"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "finger_print"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "mini_lite"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method private updatePreparedState()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isParentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;->onPrepare()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;->onUnprepare()V

    goto :goto_0
.end method


# virtual methods
.method protected Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public disableQuickTipsFlag()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.systemui.QS_TIP_MORE"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->disableQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0xff

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->gainFocus:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method getColumnSpan()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    return v0
.end method

.method protected getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldFlipFont:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onLocaleChanged()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldLocale:Ljava/util/Locale;

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldFlipFont:I

    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onFlipFontChanged()V

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldFlipFont:I

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_neqs_tile_bgcolor"

    const v2, -0xe9e9ea

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    new-instance v1, Landroid/view/TouchDelegate;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    const v11, -0xf2f2f3

    const/4 v10, 0x0

    const v8, 0x7f070029

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_neqs_hidelabels"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_neqs_textcolor"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f07002e

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    const-string v9, "user_card"

    if-ne v8, v9, :cond_5

    const/high16 v3, 0x7200

    :goto_0
    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2
    const v8, 0x7f070027

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    const-string v9, "user_card"

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_neqs_offcolor"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    const v8, 0x7f07002d

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    const-string v9, "user_card"

    if-ne v8, v9, :cond_6

    const/high16 v5, 0x7200

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_4
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_neqs_footer_color"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "tweaks_neqs_footer_color"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_1
.end method

.method protected onFlipFontChanged()V
    .locals 3

    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    const v2, 0x20300ce

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0018

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0019

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d001a

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f07002a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->gainFocus:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->gainFocus:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20300ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x2060003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "QuickSettingsTileView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gainFocus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->directionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onLocaleChanged()V
    .locals 0

    return-void
.end method

.method public onOverlayColorChanged()V
    .locals 3

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->onOverlayColorChanged()V

    :cond_0
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->onOverlayColorChanged()V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;->setOverlayEnable(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;->setOverlayEnable(Z)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    return-void
.end method

.method protected removeSelfIfNeed(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method setColumnSpan(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    :cond_0
    return-void
.end method

.method public setOnOverlayChangeListener(I)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    goto :goto_0
.end method

.method protected setTouchDelegate(II)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickSettingsTileView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTouchDelegate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
