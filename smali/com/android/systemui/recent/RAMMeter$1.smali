.class Lcom/android/systemui/recent/RAMMeter$1;
.super Landroid/os/Handler;
.source "RAMMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RAMMeter;
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

    iput-object p1, p0, Lcom/android/systemui/recent/RAMMeter$1;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter$1;->this$0:Lcom/android/systemui/recent/RAMMeter;

    #calls: Lcom/android/systemui/recent/RAMMeter;->updateMemorySize()V
    invoke-static {v0}, Lcom/android/systemui/recent/RAMMeter;->access$0(Lcom/android/systemui/recent/RAMMeter;)V

    :cond_0
    return-void
.end method
