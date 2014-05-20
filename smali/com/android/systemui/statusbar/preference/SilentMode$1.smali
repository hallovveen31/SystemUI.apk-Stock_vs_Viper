.class Lcom/android/systemui/statusbar/preference/SilentMode$1;
.super Landroid/content/BroadcastReceiver;
.source "SilentMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/SilentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/SilentMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/SilentMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/SilentMode$1;->this$0:Lcom/android/systemui/statusbar/preference/SilentMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SilentMode"

    const-string v1, "Received intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/SilentMode$1;->this$0:Lcom/android/systemui/statusbar/preference/SilentMode;

    #calls: Lcom/android/systemui/statusbar/preference/SilentMode;->handleSilentModeChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/SilentMode;->access$0(Lcom/android/systemui/statusbar/preference/SilentMode;)V

    :cond_0
    return-void
.end method
