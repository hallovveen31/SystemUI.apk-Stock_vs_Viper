.class public interface abstract Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController$SignalCluster;
.super Ljava/lang/Object;
.source "HtcGenericNetworkController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HtcGenericNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignalCluster"
.end annotation


# virtual methods
.method public abstract batchApply()V
.end method

.method public abstract setFemtocellIcon(ZI)V
.end method

.method public abstract setOpNameVisibility(Z)V
.end method

.method public abstract setPhoneSignalIcon(ZIILjava/lang/String;)V
.end method

.method public abstract setSimCardIcon(ZI)V
.end method

.method public abstract setSprintLteTextVisibility(Z)V
.end method
