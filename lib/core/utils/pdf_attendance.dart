import 'package:flutter/material.dart' as mat;
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/download_file.dart';
import 'package:industria/domain/entities/attendance/attendance.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Future<void> generatePdfAttendance(Attendance attendance) async {
  final pdf = Document();
  final dailies = [
    [
      Text(''),
      Text('Datum', style: const TextStyle(decoration: TextDecoration.underline)),
      Row(children: [
        Text('Uhrzeit ',
            style: const TextStyle(decoration: TextDecoration.underline)),
        Text('von', style: const TextStyle(decoration: TextDecoration.underline)),
      ]),
      Row(children: [
        Text('Uhrzeit ',
            style: const TextStyle(decoration: TextDecoration.underline)),
        Text('bis', style: const TextStyle(decoration: TextDecoration.underline)),
      ]),
      Text('Pause', style: const TextStyle(decoration: TextDecoration.underline)),
      Row(children: [
        Text('Stunden ',
            style: const TextStyle(decoration: TextDecoration.underline)),
        Text('netto', style: const TextStyle(decoration: TextDecoration.underline)),
      ]),
      Text('Bemerkung', style: const TextStyle(decoration: TextDecoration.underline))
    ]
        .map((e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: e))
        .toList(),
    [
      Text('Mo', style: const TextStyle(decoration: TextDecoration.underline)),
      Text(attendance.periods.mon?.date.formatted ?? ''),
      Text(attendance.periods.mon?.workTimeStart.formattedTime ?? ''),
      Text(attendance.periods.mon?.workTimeEnd.formattedTime ?? ''),
      Text(attendance.periods.mon?.pause.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.mon?.cleanWork.toStringAsFixed(2) ?? ''),
      Text((attendance.periods.mon?.comment ?? ''))
    ]
        .map((e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: e))
        .toList(),
    [
      Text("Di", style: const TextStyle(decoration: TextDecoration.underline)),
      Text(attendance.periods.tue?.date.formatted ?? ''),
      Text(attendance.periods.tue?.workTimeStart.formattedTime ?? ''),
      Text(attendance.periods.tue?.workTimeEnd.formattedTime ?? ''),
      Text(attendance.periods.tue?.pause.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.tue?.cleanWork.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.tue?.comment ?? '')
    ]
        .map((e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: e))
        .toList(),
    [
      Text("Mi", style: const TextStyle(decoration: TextDecoration.underline)),
      Text(attendance.periods.wed?.date.formatted ?? ''),
      Text(attendance.periods.wed?.workTimeStart.formattedTime ?? ''),
      Text(attendance.periods.wed?.workTimeEnd.formattedTime ?? ''),
      Text(attendance.periods.wed?.pause.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.wed?.cleanWork.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.wed?.comment ?? '')
    ]
        .map((e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: e))
        .toList(),
    [
      Text("Do", style: const TextStyle(decoration: TextDecoration.underline)),
      Text(attendance.periods.thu?.date.formatted ?? ''),
      Text(attendance.periods.thu?.workTimeStart.formattedTime ?? ''),
      Text(attendance.periods.thu?.workTimeEnd.formattedTime ?? ''),
      Text(attendance.periods.thu?.pause.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.thu?.cleanWork.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.thu?.comment ?? '')
    ]
        .map((e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: e))
        .toList(),
    [
      Text("Fr", style: const TextStyle(decoration: TextDecoration.underline)),
      Text(attendance.periods.fri?.date.formatted ?? ''),
      Text(attendance.periods.fri?.workTimeStart.formattedTime ?? ''),
      Text(attendance.periods.fri?.workTimeEnd.formattedTime ?? ''),
      Text(attendance.periods.fri?.pause.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.fri?.cleanWork.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.fri?.comment ?? '')
    ]
        .map((e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: e))
        .toList(),
    [
      Text("Sa", style: const TextStyle(decoration: TextDecoration.underline)),
      Text(attendance.periods.sat?.date.formatted ?? ''),
      Text(attendance.periods.sat?.workTimeStart.formattedTime ?? ''),
      Text(attendance.periods.sat?.workTimeEnd.formattedTime ?? ''),
      Text(attendance.periods.sat?.pause.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.sat?.cleanWork.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.sat?.comment ?? '')
    ]
        .map((e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: e))
        .toList(),
    [
      Text("So", style: const TextStyle(decoration: TextDecoration.underline)),
      Text(attendance.periods.sun?.date.formatted ?? ''),
      Text(attendance.periods.sun?.workTimeStart.formattedTime ?? ''),
      Text(attendance.periods.sun?.workTimeEnd.formattedTime ?? ''),
      Text(attendance.periods.sun?.pause.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.sun?.cleanWork.toStringAsFixed(2) ?? ''),
      Text(attendance.periods.sun?.comment ?? '')
    ]
        .map((e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            child: e))
        .toList(),
  ];
  pdf.addPage(Page(
      build: (context) => Column(children: [
            Center(
              child: Text('STUNDENZETTEL / TIME SHEET',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 5),
            Table(
                border: TableBorder.all(
                    color: PdfColor.fromInt(mat.Colors.black.value)),
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: PdfColor.fromInt(mat.Colors.black.value))),
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Text("Kunde: ${attendance.employerName}",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)))
                      ]),
                ]),
            Table(
                border: TableBorder.all(
                    color: PdfColor.fromInt(mat.Colors.black.value)),
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: PdfColor.fromInt(mat.Colors.black.value))),
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Text("Mitarbeiter: ${attendance.employeeName}",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)))
                      ]),
                ]),
            Table(
              columnWidths: {
                0: FixedColumnWidth(30),
                1: FixedColumnWidth(70),
                2: FixedColumnWidth(70),
                3: FixedColumnWidth(70),
                4: FixedColumnWidth(50),
                5: FixedColumnWidth(80),
                6: FlexColumnWidth(),
              },
                border: TableBorder.all(
                    color: PdfColor.fromInt(mat.Colors.black.value)),
                children: [
                  ...dailies
                      .map((e) => TableRow(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: PdfColor.fromInt(
                                      mat.Colors.black.value))),
                          children: e))
                      .toList()
                ]),
            Table(
                border: TableBorder.all(
                    color: PdfColor.fromInt(mat.Colors.black.value)),
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: PdfColor.fromInt(mat.Colors.black.value))),
                      children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                width: 200,
                                height: 40,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          width: 160,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: PdfColor.fromInt(
                                                      mat.Colors.black.value),
                                                  width: 3)),
                                          child: Center(
                                              child: Text(
                                                  "Summe der Stunden netto:",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                      Container(
                                          width: 80,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: PdfColor.fromInt(
                                                      mat.Colors.black.value),
                                                  width: 3)),
                                          child: Center(
                                              child: Text(
                                                  attendance.cleanWeekWork.toStringAsFixed(2),
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                      FontWeight.bold)))),
                                    ])))
                      ]),
                ]),
          ])));
  downloadFile(await pdf.save(), "report.pdf");
}
