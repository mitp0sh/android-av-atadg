.class public abstract Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final a:Lorg/joda/time/format/DateTimeFormatter;

.field static final b:Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;->a:Lorg/joda/time/format/DateTimeFormatter;

    .line 55
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;->b:Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected printLocalDate(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;->b:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected printLocalDate(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;->b:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected printLocalDateTime(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/codehaus/jackson/map/ext/JodaSerializers$JodaSerializer;->a:Lorg/joda/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
