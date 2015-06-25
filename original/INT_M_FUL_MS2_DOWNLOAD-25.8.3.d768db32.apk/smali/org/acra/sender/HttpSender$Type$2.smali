.class final enum Lorg/acra/sender/HttpSender$Type$2;
.super Lorg/acra/sender/HttpSender$Type;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/acra/sender/HttpSender$Type;-><init>(Ljava/lang/String;ILorg/acra/sender/HttpSender$1;)V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "application/json"

    return-object v0
.end method
