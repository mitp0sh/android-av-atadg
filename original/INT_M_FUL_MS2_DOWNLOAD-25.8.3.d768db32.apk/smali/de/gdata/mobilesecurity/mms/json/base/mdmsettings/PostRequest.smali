.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest;->Type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest;->Type:Ljava/lang/Integer;

    .line 18
    return-void
.end method

.method public withType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostRequest;->Type:Ljava/lang/Integer;

    .line 26
    return-object p0
.end method
