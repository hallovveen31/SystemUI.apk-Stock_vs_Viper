.class Lcom/android/systemui/recent/RAMMeter$3;
.super Ljava/lang/Object;
.source "RAMMeter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RAMMeter;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RAMMeter;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RAMMeter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RAMMeter$3;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter$3;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RAMMeter;->clearRecentApps()V

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter$3;->this$0:Lcom/android/systemui/recent/RAMMeter;

    #getter for: Lcom/android/systemui/recent/RAMMeter;->mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;
    invoke-static {v0}, Lcom/android/systemui/recent/RAMMeter;->access$1(Lcom/android/systemui/recent/RAMMeter;)Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter$3;->this$0:Lcom/android/systemui/recent/RAMMeter;

    #getter for: Lcom/android/systemui/recent/RAMMeter;->mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;
    invoke-static {v0}, Lcom/android/systemui/recent/RAMMeter;->access$1(Lcom/android/systemui/recent/RAMMeter;)Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/recent/RAMMeter$onTasksCleared;->onClicked()V

    :cond_0
    return-void
.end method
