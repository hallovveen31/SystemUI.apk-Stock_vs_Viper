.class Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;
.super Ljava/lang/Object;
.source "RecentsGridView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->playReArrangeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recent/RecentsGridView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecentGridView"

    const-string v1, "playReArrangeAnimation() onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->this$0:Lcom/android/systemui/recent/RecentsGridView;

    #getter for: Lcom/android/systemui/recent/RecentsGridView;->mRecentSwipeHelper:Lcom/android/systemui/recent/RecentSwipeHelper;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsGridView;->access$100(Lcom/android/systemui/recent/RecentsGridView;)Lcom/android/systemui/recent/RecentSwipeHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentSwipeHelper;->setIsDismissingChild(Z)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    #getter for: Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->access$200(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    #getter for: Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->access$300(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    #getter for: Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewLeftList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->access$400(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    #getter for: Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->access$500(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    #getter for: Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewLeftList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->access$600(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recent/RecentsGridView;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RecentGridView"

    const-string v2, "playReArrangeAnimation() onAnimationStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    #getter for: Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->access$200(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;->this$1:Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;

    #getter for: Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->access$200(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
