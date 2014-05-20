.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4$1;
.super Landroid/database/ContentObserver;
.source "HtcGenericNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4$1;->this$1:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4$1;->this$1:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;->access$0(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$4;)Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$14(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    return-void
.end method
