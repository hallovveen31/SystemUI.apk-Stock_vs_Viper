.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$3;
.super Landroid/os/AsyncTask;
.source "QuickSettingSoundProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->nextProfileState()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "args"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSoundProfile;->performNextProfileState()V

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method
