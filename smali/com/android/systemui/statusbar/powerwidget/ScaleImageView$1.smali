.class Lcom/android/systemui/statusbar/powerwidget/ScaleImageView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->get2DPressAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;

.field final synthetic this$0$:Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView$1;->this$0$:Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView$1;->this$0$:Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/ScaleImageView;->setOverlayEnable(Z)V

    return-void
.end method
