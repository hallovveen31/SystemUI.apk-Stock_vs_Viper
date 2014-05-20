.class public Lcom/android/systemui/statusbar/widget/SignalBarView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "SignalBarView.java"


# instance fields
.field private mLeft:Landroid/graphics/drawable/Drawable;

.field private mRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "wSpec"
    .parameter "hSpec"

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 49
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

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/widget/SignalBarView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setImageResource(II)V
    .locals 5
    .parameter "leftId"
    .parameter "rightId"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

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

    .line 42
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->requestLayout()V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/SignalBarView;->invalidate()V

    .line 44
    return-void

    .line 31
    :cond_0
    iput-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 39
    :cond_1
    iput-object v3, p0, Lcom/android/systemui/statusbar/widget/SignalBarView;->mRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
