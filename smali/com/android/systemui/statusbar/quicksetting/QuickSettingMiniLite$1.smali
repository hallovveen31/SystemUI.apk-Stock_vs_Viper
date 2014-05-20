.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;
.super Ljava/lang/Object;
.source "QuickSettingMiniLite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    const-string v1, "QuickSettingMiniLite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click:launch auto-connection activity! miniCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->miniCount:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->Log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method
