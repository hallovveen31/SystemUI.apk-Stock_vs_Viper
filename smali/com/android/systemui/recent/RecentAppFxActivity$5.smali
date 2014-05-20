.class Lcom/android/systemui/recent/RecentAppFxActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentAppFxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;->clearAllItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

.field final synthetic val$childCount:I

.field final synthetic val$isLast:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;Landroid/view/View;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$isLast:Z

    iput p4, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$childCount:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 435
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$v:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 438
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$isLast:Z

    if-nez v2, :cond_1

    .line 445
    :cond_0
    return-void

    .line 439
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$childCount:I

    if-ge v0, v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recent/RecentsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 442
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_2

    .line 439
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->handleSwipe(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$5;->val$v:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 432
    return-void
.end method
