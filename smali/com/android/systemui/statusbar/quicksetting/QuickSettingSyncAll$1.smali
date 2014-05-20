.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;
.super Ljava/lang/Object;
.source "QuickSettingSyncAll.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    const-string v1, "QuickSettingSyncAll"

    const-string v2, "click:toggle sync all state!"

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->toggleSyncAll()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)V

    return-void
.end method
