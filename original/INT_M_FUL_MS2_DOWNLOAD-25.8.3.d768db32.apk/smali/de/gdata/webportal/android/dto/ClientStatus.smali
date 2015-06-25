.class public Lde/gdata/webportal/android/dto/ClientStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CLEAN:I

.field public static INFECTED:I

.field public static TYPE_INFECTED:I

.field public static TYPE_NONE:I


# instance fields
.field mType:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "type"
    .end annotation
.end field

.field mValue:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "value"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6
    sput v0, Lde/gdata/webportal/android/dto/ClientStatus;->TYPE_NONE:I

    .line 7
    sput v1, Lde/gdata/webportal/android/dto/ClientStatus;->TYPE_INFECTED:I

    .line 9
    sput v0, Lde/gdata/webportal/android/dto/ClientStatus;->CLEAN:I

    .line 10
    sput v1, Lde/gdata/webportal/android/dto/ClientStatus;->INFECTED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mType:I

    .line 14
    iput v0, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mValue:I

    .line 24
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mType:I

    .line 14
    iput v0, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mValue:I

    .line 18
    iput p1, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mType:I

    .line 19
    iput p2, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mValue:I

    .line 20
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mType:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mValue:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mType:I

    .line 32
    return-void
.end method

.method public setValue(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lde/gdata/webportal/android/dto/ClientStatus;->mValue:I

    .line 40
    return-void
.end method
