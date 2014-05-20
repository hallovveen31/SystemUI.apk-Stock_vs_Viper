.class public Lcom/android/systemui/statusbar/widget/OverlayImageView;
.super Landroid/widget/ImageView;
.source "OverlayImageView.java"


# static fields
.field protected static final DEBUG:Z

.field private static focusDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private gainFocus:Z

.field private multiplyPaint:Landroid/graphics/Paint;

.field private overlayEnable:Z

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->gainFocus:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->multiplyPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->overlayEnable:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->gainFocus:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->multiplyPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->overlayEnable:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/widget/OverlayImageView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->setInternalOverlayEnable(Z)V

    return-void
.end method

.method private setInternalOverlayEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->overlayEnable:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->overlayEnable:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "viewScale"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/widget/OverlayImageView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView$1;-><init>(Lcom/android/systemui/statusbar/widget/OverlayImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v2, "viewScale"

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/widget/OverlayImageView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView$2;-><init>(Lcom/android/systemui/statusbar/widget/OverlayImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->multiplyPaint:Landroid/graphics/Paint;

    const v3, 0x2060003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->overlayEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->gainFocus:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->gainFocus:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->invalidate()V

    sget-object v1, Lcom/android/systemui/statusbar/widget/OverlayImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->gainFocus:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/widget/OverlayImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/systemui/statusbar/widget/OverlayImageView;->focusDrawable:Landroid/graphics/drawable/Drawable;

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
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->setInternalOverlayEnable(Z)V

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->setViewScale(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setViewScale(F)V
    .locals 0

    return-void
.end method
