.class Lcom/android/systemui/statusbar/traffic/Traffic$2;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/traffic/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/traffic/Traffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/traffic/Traffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/traffic/Traffic$2;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/traffic/Traffic$2;->this$0:Lcom/android/systemui/statusbar/traffic/Traffic;

    iget-object v0, v0, Lcom/android/systemui/statusbar/traffic/Traffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
