.class public Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->a:I

    .line 11
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->b:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->c:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getStatuscode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->a:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->a:I

    .line 29
    return-void
.end method
