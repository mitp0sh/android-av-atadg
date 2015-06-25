.class public interface abstract Lde/gdata/messaging/isfaserverdefinitions/IRpcService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addPhishingException(Ljava/lang/String;)V
.end method

.method public abstract getSupressedNumbers()Ljava/lang/String;
.end method

.method public abstract hasPremiumEnabled()Z
.end method

.method public abstract isMaliciousUrl(Ljava/lang/String;)Z
.end method

.method public abstract isPasswordCorrect([B)Z
.end method

.method public abstract shouldBeFiltered(Ljava/lang/String;II)Z
.end method

.method public abstract shouldSMSBeBlocked(Ljava/lang/String;Ljava/lang/String;)Z
.end method
