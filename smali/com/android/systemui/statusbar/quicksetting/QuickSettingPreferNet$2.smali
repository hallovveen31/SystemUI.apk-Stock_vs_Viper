.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$2;
.super Landroid/os/Handler;
.source "QuickSettingPreferNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xc351

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->updateActiveNetwork()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    :cond_0
    return-void
.end method
