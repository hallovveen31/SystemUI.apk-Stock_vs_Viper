.class Lcom/android/systemui/statusbar/info/TextInfo$3;
.super Ljava/lang/Object;
.source "TextInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/info/TextInfo;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/info/TextInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/info/TextInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/info/TextInfo$3;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$3;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    #getter for: Lcom/android/systemui/statusbar/info/TextInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->access$1(Lcom/android/systemui/statusbar/info/TextInfo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$3;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->onStopIntenal()V

    return-void
.end method
