.class public Lcom/android/systemui/statusbar/widget/SignalBarView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "SignalBarView.java"


# instance fields
.field private mLeft:Landroid/graphics/drawable/Drawable;

.field private mRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_status_bar_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v3, v3

    const v5, 0x7f0c009d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-double v5, v5

    div-double v0, v3, v5

    double-to-float v3, v0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setScaleX(F)V

    double-to-float v3, v0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setScaleY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageResource(II)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/AnimatedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->invalidate()V

    return-void

    :cond_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
