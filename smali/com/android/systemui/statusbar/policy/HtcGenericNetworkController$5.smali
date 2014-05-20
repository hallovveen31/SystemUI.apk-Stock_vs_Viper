.class Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$5;
.super Landroid/database/ContentObserver;
.source "HtcGenericNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$5;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$5;->this$0:Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->updateIcons()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;->access$15(Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;)V

    return-void
.end method
