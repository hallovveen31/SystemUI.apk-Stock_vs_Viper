.class Lcom/android/systemui/statusbar/preference/BT$3;
.super Landroid/content/BroadcastReceiver;
.source "BT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/BT;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/BT;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/BT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/BT$3;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT$3;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/preference/BT;->handleBtStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/BT;->access$1(Lcom/android/systemui/statusbar/preference/BT;I)V

    return-void
.end method
