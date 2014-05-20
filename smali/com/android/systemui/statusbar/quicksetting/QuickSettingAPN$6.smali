.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$6;
.super Landroid/os/AsyncTask;
.source "QuickSettingAPN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->switchAPNstate()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getSelectAPN()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->getNextSelectKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->setSelectAPNkey(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$1600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method
