.class public interface abstract Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getId()Ljava/lang/Long;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumbers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isContact()Z
.end method
