.class public interface abstract Lcom/android/systemui/recent/RAMMeter$onTasksCleared;
.super Ljava/lang/Object;
.source "RAMMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RAMMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onTasksCleared"
.end annotation


# virtual methods
.method public abstract getTasksDescriptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onClicked()V
.end method
