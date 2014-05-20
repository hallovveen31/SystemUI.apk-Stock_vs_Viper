.class public Lcom/android/systemui/statusbar/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field mAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private updateAnim()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 45
    :cond_0
    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_3

    .line 46
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 53
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    .line 41
    goto :goto_0

    .line 51
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 75
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    .line 84
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "vis"

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 59
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 66
    return-void
.end method
