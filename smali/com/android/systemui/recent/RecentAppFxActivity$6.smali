.class Lcom/android/systemui/recent/RecentAppFxActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentAppFxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;->playAlphaAnimate(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

.field final synthetic val$isLastTask:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->val$isLastTask:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 553
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 556
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->val$isLastTask:Z

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsGridView;->setAllThumbnailShowed()V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsGridView;->invalidate()V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$000(Lcom/android/systemui/recent/RecentAppFxActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$700(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->textAnimation:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$600(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$700(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->clearWindowFlag:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$800(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 564
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->val$view:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 550
    return-void
.end method
