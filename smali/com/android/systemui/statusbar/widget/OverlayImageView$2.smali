.class Lcom/android/systemui/statusbar/widget/OverlayImageView$2;
.super Ljava/lang/Object;
.source "OverlayImageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/widget/OverlayImageView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/widget/OverlayImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/widget/OverlayImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView$2;->this$0:Lcom/android/systemui/statusbar/widget/OverlayImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/OverlayImageView$2;->this$0:Lcom/android/systemui/statusbar/widget/OverlayImageView;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/statusbar/widget/OverlayImageView;->setInternalOverlayEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/widget/OverlayImageView;->access$0(Lcom/android/systemui/statusbar/widget/OverlayImageView;Z)V

    return-void
.end method
