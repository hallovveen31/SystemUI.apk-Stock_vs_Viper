.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "args"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->toggleTimeoutState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingTimeout;)V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method
