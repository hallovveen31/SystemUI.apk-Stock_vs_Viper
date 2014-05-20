.class Lcom/android/systemui/recent/RecentSwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentSwipeHelper;->dismissChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentSwipeHelper;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    #getter for: Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentSwipeHelper;->access$000(Lcom/android/systemui/recent/RecentSwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentSwipeHelper$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    return-void
.end method
