.class Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;
.super Ljava/lang/Object;
.source "RecentsGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReArrangeHelper"
.end annotation


# instance fields
.field private mAnimationInvertFlag:Z

.field private mDelOriViewLeftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Lcom/android/systemui/recent/RecentsGridView;

.field private mNowViewLeftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNowViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentsGridView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->this$0:Lcom/android/systemui/recent/RecentsGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mAnimationInvertFlag:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewTopList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewLeftList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewTopList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewLeftList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    check-cast p2, Lcom/android/systemui/recent/RecentsGridView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mGridView:Lcom/android/systemui/recent/RecentsGridView;

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewLeftList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewLeftList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public playReArrangeAnimation()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/systemui/recent/RecentsGridView;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "RecentGridView"

    const-string v8, "ReArrangeHelper - playReArrangeAnimation()"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mAnimationInvertFlag:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewLeftList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewTopList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    const-string v8, "Y"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewTopList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewTopList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v8, "X"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewLeftList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewLeftList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    :goto_1
    new-array v7, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v7, v11

    aput-object v3, v7, v12

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f80

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 v7, v1, 0x1e

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    const-string v8, "Y"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v8, "X"

    new-array v9, v13, [F

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v11

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    aput v7, v9, v12

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    goto/16 :goto_1

    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v7, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper$1;-><init>(Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;)V

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setAfterDelPositionList()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDelPositionsList(I)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/recent/RecentsGridView;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RecentGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReArrangeHelper - setDelPositionsList() index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-eq v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mGridView:Lcom/android/systemui/recent/RecentsGridView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsGridView$ReArrangeHelper;->mDelOriViewLeftList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
