.class public Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;->a:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;->b:Ljava/lang/Integer;

    .line 76
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;->c:Ljava/lang/Integer;

    .line 77
    return-void
.end method


# virtual methods
.method public getMessageType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration$MetaData;->c:Ljava/lang/Integer;

    return-object v0
.end method
