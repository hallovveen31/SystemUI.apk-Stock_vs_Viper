.class Lcom/android/systemui/recent/RecentAppFxActivity$1;
.super Ljava/lang/Object;
.source "RecentAppFxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #setter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mIsTextAnimNeeded:Z
    invoke-static {v3, v6}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$002(Lcom/android/systemui/recent/RecentAppFxActivity;Z)Z

    .line 147
    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;
    invoke-static {v4}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsGridView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/RecentsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 175
    .end local v2           #v:Landroid/view/View;
    :goto_0
    return-void

    .line 149
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    .line 150
    .local v0, h:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;
    iget-object v3, v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->text1:Landroid/widget/TextView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 151
    .local v1, textAnimators:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    new-instance v3, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity$1;Landroid/view/View;Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    new-instance v3, Lcom/android/systemui/recent/RecentAppFxActivity$1$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/recent/RecentAppFxActivity$1$2;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity$1;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    check-cast v2, Lcom/android/systemui/recent/RecentsItemView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, v6}, Lcom/android/systemui/recent/RecentsItemView;->setDrawableAlpha(I)V

    .line 174
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 150
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
