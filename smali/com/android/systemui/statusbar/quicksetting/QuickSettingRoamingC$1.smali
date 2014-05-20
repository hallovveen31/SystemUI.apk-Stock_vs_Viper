.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC$1;
.super Ljava/lang/Object;
.source "QuickSettingRoamingC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;

    const-string v1, "QuickSettingRoamingC"

    const-string v2, "click:launch roaming setting shortcut item!"

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->Log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC$1$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoamingC$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method
