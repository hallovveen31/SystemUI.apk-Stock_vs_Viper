.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$1;
.super Ljava/lang/Object;
.source "QuickSettingBluetooth.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->toggleNextState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V

    return-void
.end method
