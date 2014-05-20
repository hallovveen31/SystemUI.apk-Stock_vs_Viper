.class Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "QuickContact"

    const-string v1, "onReceiver:com.htc.action.systemui.CONTACT_UPDATE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->refreshContactField()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V

    return-void
.end method
