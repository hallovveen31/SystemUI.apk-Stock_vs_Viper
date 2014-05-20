.class public Lcom/android/systemui/statusbar/widget/ScaleImageView;
.super Landroid/widget/ImageView;
.source "ScaleImageView.java"


# static fields
.field protected static final DEBUG:Z

.field private static focusDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private draw_color:Z

.field private gainFocus:Z

.field private multiplyPaint:Landroid/graphics/Paint;

.field private overlayEnable:Z

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->DEBUG:Z

    .line 227
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    .line 72
    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 135
    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 136
    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 182
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->overlayEnable:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    .line 72
    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 135
    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 136
    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 182
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->overlayEnable:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    .line 50
    return-void
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1
    .parameter "_enable"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    if-eq v0, p1, :cond_0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->postInvalidate()V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    .local v1, resource:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0           #lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 87
    .restart local v0       #lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/util/ActionBarUtil;->getItemWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 88
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xff

    const/4 v1, 0x1

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    if-ne v0, v1, :cond_0

    .line 198
    const/16 v0, 0x33

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 200
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->overlayEnable:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 213
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 216
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 218
    sget-object v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    sget-object v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 221
    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "_gainFocus"
    .parameter "_direction"
    .parameter "_prevFocusRect"

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 235
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->invalidate()V

    .line 239
    sget-object v1, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 243
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x208012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    sget-object v1, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x2060003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    .end local v0           #resource:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 179
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 155
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 164
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 176
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
