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

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->overlayEnable:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->overlayEnable:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    return-void
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    :cond_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/util/ActionBarUtil;->getItemWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0xff

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->draw_color:Z

    if-ne v0, v1, :cond_0

    const/16 v0, 0x33

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->overlayEnable:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sget-object v1, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/widget/ScaleImageView;->gainFocus:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/systemui/statusbar/widget/ScaleImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x2060003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setColorSelectorEnable(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
